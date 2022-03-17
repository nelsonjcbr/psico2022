class CreatePacientes < ActiveRecord::Migration[7.0]
  def change
    create_table :pacientes do |t|
      t.string :nome
      t.string :cpf
      t.date :data_nascimento
      t.string :sexo
      t.string :endereco
      t.string :bairro
      t.string :cidade
      t.string :fones
      t.string :nome_mae
      t.string :nome_pai
      t.string :estado_civil
      t.string :nome_conjuge
      t.string :filhos
      t.string :local_trabalho
      t.string :religiao
      t.string :profissao
      t.string :grau_instrucao
      t.text :observacoes
      t.references :convenio, foreign_key: true
      t.float :valor_atendimento
      t.boolean :inativo, 
      t.timestamps
    end
  end
end
