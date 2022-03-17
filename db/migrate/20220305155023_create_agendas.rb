class CreateAgendas < ActiveRecord::Migration[7.0]
  def change
    create_table :agendas do |t|
      t.timestamp :data_hora
      t.references :paciente, null: false, foreign_key: true
      t.boolean :agenda
      t.float :valor_atendimento
      t.references :convenio, null: false, foreign_key: true
      t.string :obs

      t.timestamps
    end
  end
end
