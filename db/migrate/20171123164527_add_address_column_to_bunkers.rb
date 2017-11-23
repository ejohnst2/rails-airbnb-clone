class AddAddressColumnToBunkers < ActiveRecord::Migration[5.1]
  def change
    add_column :bunkers, :address, :string
  end
end
