class ChangeTypeBunker < ActiveRecord::Migration[5.1]
  def change
    change_column :bunkers, :detailed_description, :text
    change_column :bunkers, :description, :string
  end
end
