class CreateBunkersFeatures < ActiveRecord::Migration[5.1]
  def change
    create_table :bunkers_features, id: false do |t|
      t.references :bunker
      t.references :feature

      t.timestamps
    end
  end
end
