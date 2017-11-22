class AddDescriptionAndNameToBunkers < ActiveRecord::Migration
  def change
    add_column :bunkers, :description, :text
    add_column :bunkers, :name, :string
  end
end
