class AddApprovalToTrip < ActiveRecord::Migration[5.1]
  def change
    add_column :trips, :approved, :boolean, default: false
  end
end


# class AddPartNumberToProducts < ActiveRecord::Migration[5.0]
#   def change
#     add_column :products, :part_number, :string
#   end
# end
