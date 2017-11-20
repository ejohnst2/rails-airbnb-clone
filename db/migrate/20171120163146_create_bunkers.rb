class CreateBunkers < ActiveRecord::Migration[5.1]
  def change
    create_table :bunkers do |t|
      t.referencessize :user
      t.integer :price
      t.references :location, foreign_key: true
      t.references :review, foreign_key: true

      t.timestamps
    end
  end
end
