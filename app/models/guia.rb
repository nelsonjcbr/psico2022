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
  def atualiza_agendas
    self.paciente.agendas.sem_guia.each do |agenda|
      agenda.obs = agenda.obs + '.'
      agenda.save! 
    end
  end

end
