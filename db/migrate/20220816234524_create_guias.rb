class CreateGuias < ActiveRecord::Migration[7.0]
  def change
    create_table :guias do |t|
      t.integer :tipo
      t.references :paciente, null: false, foreign_key: true
      t.integer :solicitados
      t.date :data_fatura
      t.bigint :numero

      t.timestamps
    end
  end
end
