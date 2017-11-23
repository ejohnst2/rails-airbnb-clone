class AddZipCodeCityCountryToBunker < ActiveRecord::Migration[5.1]
  def change
    add_column :bunkers, :zip_code, :integer
    add_column :bunkers, :city, :string
    add_column :bunkers, :country, :string
  end
end
