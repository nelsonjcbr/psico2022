class AddNomeChamadoToPaciente < ActiveRecord::Migration[7.0]
  def change
    add_column :pacientes, :nome_chamado, :string
  end
end
