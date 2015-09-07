class AddAttachmentImage2ToApartments < ActiveRecord::Migration
  def self.up
    change_table :apartments do |t|
      t.attachment :image2
    end
  end

  def self.down
    remove_attachment :apartments, :image2
  end
end
