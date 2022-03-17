class CreateClinicas < ActiveRecord::Migration[7.0]
  def change
    create_table :clinicas do |t|
      t.string :nome
      t.string :endereco
      t.string :bairro
      t.string :cidade
      t.string :uf
      t.string :cnpj
      t.string :fone

      t.timestamps
    end
  end
end
