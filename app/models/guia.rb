class Guia < ApplicationRecord
  belongs_to :paciente
  has_many :agendas

  validates :paciente_id, :tipo, :solicitados, presence: true 

  after_create :atualiza_agendas 

  def tipo_nome
    if self.tipo == 1 then 'Consulta'
    else 'Atendimento'
    end
  end

  def tipo_numero
    self.tipo.to_s + '-' + self.numero.to_s
  end

  def executados
    self.agendas.atendidos.size
  end

  def self.ativas
    where("solicitados > (select count(*) from agendas where agendas.guia_id = guias.id and not cancelado and not agendado)")
  end

  private 
  # Liga os atendimentos sem guia do paciente a esta guia (mais antigos primeiro),
  # até o limite de atendimentos solicitados.
  def atualiza_agendas
    vagas = self.solicitados - self.executados
    return if vagas <= 0

    self.paciente.agendas.sem_guia.order(:data_hora).limit(vagas).each do |agenda|
      agenda.update!(guia: self)
    end
  end

end
