class AddAttachmentImage3ToApartment < ActiveRecord::Migration
  def change
    add_column :apartments, :image3, :attachment
  end
end
