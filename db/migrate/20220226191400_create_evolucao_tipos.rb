class CreateEvolucaoTipos < ActiveRecord::Migration[7.0]
  def change
    create_table :evolucao_tipos do |t|
      t.string :nome

      t.timestamps
    end
  end
end
