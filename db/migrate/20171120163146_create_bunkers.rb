class CreateBunkers < ActiveRecord::Migration
  def change
    create_table :bunkers do |t|
      t.references :user, foreign_key: true
      t.string :size
      t.integer :price
      t.references :location, foreign_key: true

      t.timestamps
    end
  end
end
