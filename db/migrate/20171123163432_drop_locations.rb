class DropLocations < ActiveRecord::Migration[5.1]
  def change
    remove_reference :bunkers, :location
    drop_table :locations
  end
end
