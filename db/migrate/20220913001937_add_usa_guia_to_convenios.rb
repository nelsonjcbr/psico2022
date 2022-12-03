class AddUsaGuiaToConvenios < ActiveRecord::Migration[7.0]
  def change
    add_column :convenios, :usa_guia, :boolean
  end
end
