class Paciente < ApplicationRecord
  belongs_to :convenio
  has_many :agendas
  has_many :guias

  validates :nome, :nome_chamado, :convenio_id, :valor_atendimento, presence: true

  default_scope -> { order('nome') }

  scope :inativos, -> { where(:inativo => true)}
  scope :ativos, -> { where(:inativo => false)}
  
  # Ex:- scope :active, -> {where(:active => true)}

end
