class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|
      t.string :country
      t.string :city
      t.integer :number
      t.string :street_name
      t.integer :zip
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
