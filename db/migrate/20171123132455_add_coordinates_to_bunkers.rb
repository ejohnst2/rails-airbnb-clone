class AddCoordinatesToBunkers < ActiveRecord::Migration[5.1]
  def change
    add_column :bunkers, :latitude, :float
    add_column :bunkers, :longitude, :float
  end
end
