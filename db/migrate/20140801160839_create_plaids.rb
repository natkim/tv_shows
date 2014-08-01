class CreatePlaids < ActiveRecord::Migration
  def change
    create_table :plaids do |t|
      t.integer :network_id
      t.integer :show_id

      t.timestamps
    end
  end
end
