class CreateConvenios < ActiveRecord::Migration[7.0]
  def change
    create_table :convenios do |t|
      t.string :nome
      t.float :valor_atendimento

      t.timestamps
    end
  end
end
