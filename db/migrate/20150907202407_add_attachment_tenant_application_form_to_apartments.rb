class AddAttachmentTenantApplicationFormToApartments < ActiveRecord::Migration
  def self.up
    change_table :apartments do |t|
      t.attachment :tenant_application_form
    end
  end

  def self.down
    remove_attachment :apartments, :tenant_application_form
  end
end
