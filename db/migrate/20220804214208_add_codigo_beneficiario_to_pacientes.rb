class AddCodigoBeneficiarioToPacientes < ActiveRecord::Migration[7.0]
  def change
    add_column :pacientes, :codigo_beneficiario, :string
  end
end
