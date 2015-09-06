class AddAttributesToApartment < ActiveRecord::Migration
  def change
    add_column :apartments, :half_bathroom, :integer
    add_column :apartments, :full_bathroom, :integer
    add_column :apartments, :rooms, :integer
  end
end
