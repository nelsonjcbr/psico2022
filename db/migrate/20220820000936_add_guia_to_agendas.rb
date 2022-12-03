class AddGuiaToAgendas < ActiveRecord::Migration[7.0]
  def change
    add_reference :agendas, :guia, foreign_key: true
  end
end
