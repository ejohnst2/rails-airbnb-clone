class AddDescriptionAndNameToBunkers < ActiveRecord::Migration[5.1]
  def change
    add_column :bunkers, :description, :text
    add_column :bunkers, :name, :string
  end
end
