class AddAttachmentImage1ToApartment < ActiveRecord::Migration
  def change
    add_column :apartments, :image1, :attachment
  end
end
