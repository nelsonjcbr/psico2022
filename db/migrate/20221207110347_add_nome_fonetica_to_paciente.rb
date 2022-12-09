class AddNomeFoneticaToPaciente < ActiveRecord::Migration[7.0]
  def change
    add_column :pacientes, :nome_fonetica, :string
    add_index :pacientes, :nome_fonetica
  end
end
