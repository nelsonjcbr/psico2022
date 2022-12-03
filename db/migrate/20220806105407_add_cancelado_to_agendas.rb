class AddCanceladoToAgendas < ActiveRecord::Migration[7.0]
  def change
    add_column :agendas, :cancelado, :boolean, default: false
  end
end
