class Paciente < ApplicationRecord
  belongs_to :convenio
  has_many :agendas

  validates :nome, :convenio_id, :valor_atendimento, presence: true

  default_scope -> { order('nome') }

  scope :inativos, -> { where(:inativo => true)}
  scope :ativos, -> { where(:inativo => false)}
  
  # Ex:- scope :active, -> {where(:active => true)}
end
