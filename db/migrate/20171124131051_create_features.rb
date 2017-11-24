class CreateFeatures < ActiveRecord::Migration[5.1]
  def change
    create_table :features do |t|
      t.string :name
      t.string :description
      t.string :fa_icon

      t.timestamps
    end
  end
end
