class AddValorRecebidoToAgendas < ActiveRecord::Migration[7.0]
  def change
    add_column :agendas, :valor_recebido, :float
    add_reference :agendas, :recurso, foreign_key: true
  end
end
