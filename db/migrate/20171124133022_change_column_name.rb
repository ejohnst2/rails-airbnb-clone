class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :bunkers, :short_description, :description1
    rename_column :bunkers, :description, :detailed_description
    rename_column :bunkers, :description1, :description
  end
end
