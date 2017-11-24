class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :bunkers, :detailed_description, :description
    rename_column :bunkers, :description, :detailed_description
  end
end
