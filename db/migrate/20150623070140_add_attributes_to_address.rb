class AddAttributesToAddress < ActiveRecord::Migration
  def change
    add_column :addresses, :line1, :string
    add_column :addresses, :line2, :string
    add_column :addresses, :city, :string
    add_column :addresses, :state, :string
    add_column :addresses, :zip, :string
  end
end
