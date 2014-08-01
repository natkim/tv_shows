class CreateNetworks < ActiveRecord::Migration
  def change
    create_table :networks do |t|
      t.string :show
      t.string :url
      t.string :name

      t.timestamps
    end
  end
end
