class AddAttachmentImage3ToApartments < ActiveRecord::Migration
  def self.up
    change_table :apartments do |t|
      t.attachment :image3
    end
  end

  def self.down
    remove_attachment :apartments, :image3
  end
end
