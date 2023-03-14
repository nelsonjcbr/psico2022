class Agenda < ApplicationRecord
  belongs_to :paciente
  belongs_to :convenio
  belongs_to :recurso, optional: true
  belongs_to :guia, optional: true
  
  validates :convenio_id, :valor_atendimento, presence: true 

  before_validation :set_defaults, on: :create
  before_validation :set_recebido, on: :update

  scope :atendidos, -> { where("not cancelado and not agendado") }
  scope :sem_guia, -> { joins(:convenio).where("not cancelado and not agendado and convenios.usa_guia and guia_id isnull") }

  before_save :carrega_guia

  def carrega_guia
    self.guia = self.paciente.guias.ativas.first if self.guia.blank?
    self.guia = nil if self.cancelado 
  end

  private 
  
  def set_defaults
    self.convenio_id = self.paciente.convenio_id
    self.valor_atendimento = self.paciente.valor_atendimento
    set_recebido
  end

  def set_recebido
    self.valor_recebido = self.paciente.valor_atendimento if !self.recurso_id.nil? & self.valor_recebido.nil?
  end

end
