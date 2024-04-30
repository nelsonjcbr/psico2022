class Paciente < ApplicationRecord
  belongs_to :convenio
  has_many :agendas
  has_many :guias

  validates :nome, :nome_chamado, :convenio_id, :valor_atendimento, presence: true

  default_scope -> { order('nome') }

  scope :inativos, -> { where(:inativo => true)}
  scope :ativos, -> { where(:inativo => false)}
  
  # Ex:- scope :active, -> {where(:active => true)}
  before_save :foneticalize

  def self.search(nome)
    # com fonetica where(arel_table[:nome_fonetica].matches("#{nome.foneticalize}%"))
    where("soundex_individual_names(nome) ilike '%' || replace(soundex_individual_names('#{nome}'), ' ', '%') || '%'").
    reorder(Arel.sql("similarity(nome, '#{nome}') DESC"))
  end

  protected

  def foneticalize
    self.nome_fonetica = nome.foneticalize
  end

end
