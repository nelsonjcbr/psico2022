class AddObsToGuias < ActiveRecord::Migration[7.0]
  def change
    add_column :guias, :obs, :string
  end
end
