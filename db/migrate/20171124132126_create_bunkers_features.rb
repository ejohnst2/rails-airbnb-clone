class CreateBunkersFeatures < ActiveRecord::Migration[5.1]
  def change
    create_table :bunkers_features, id: false do |t|
      t.references :bunker_id
      t.references :feature_id

      t.timestamps
    end
  end
end
