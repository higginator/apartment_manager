class AddAttachmentImage2ToApartment < ActiveRecord::Migration
  def change
    add_column :apartments, :image2, :attachment
  end
end
