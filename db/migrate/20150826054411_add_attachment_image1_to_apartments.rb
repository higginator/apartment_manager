class AddAttachmentImage1ToApartments < ActiveRecord::Migration
  def self.up
    change_table :apartments do |t|
      t.attachment :image1
    end
  end

  def self.down
    remove_attachment :apartments, :image1
  end
end
