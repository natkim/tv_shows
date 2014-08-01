class RemoveColumnsFromActorsAndRoles < ActiveRecord::Migration
  def change
    remove_column :actors, :show, :string
    remove_column :shows, :actor, :string
    remove_column :networks, :show, :string
  end
end
