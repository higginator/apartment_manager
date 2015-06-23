class AddApartmentIdToAddress < ActiveRecord::Migration
  def change
    add_column :addresses, :apartment_id, :integer
  end
end
