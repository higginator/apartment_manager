class Apartment < ActiveRecord::Base
	belongs_to :user
	has_one :address
	has_attached_file :image1, :allow_destroy => true, :styles => { :medium => "500x500>", :thumb => "100x100>", :small => "300x300>"}
  has_attached_file :image2, :allow_destroy => true, :styles => { :medium => "500x500>", :thumb => "100x100>", :small => "300x300>"}
  has_attached_file :image3, :allow_destroy => true, :styles => { :medium => "500x500>", :thumb => "100x100>", :small => "300x300>"}
  has_attached_file :tenant_application_form, :allow_destroy => true
  validates_attachment :tenant_application_form, content_type: { content_type: "application/pdf" }
  validates_attachment_content_type :image1, :content_type => /\A.*\Z/
  validates_attachment_content_type :image2, :content_type => /\A.*\Z/
  validates_attachment_content_type :image3, :content_type => /\A.*\Z/
  

  before_save :destroy_image1?

  def image_delete1
    @image_delete1 ||="0"
  end

  def image_delete1=(value)
    @image_delete1 = value
  end
	
	before_save :destroy_image1?
	
	def image1?
    (self.image1 != nil and self.image1.exists?)
  end
  
  def image2?
    (self.image2 != nil and self.image2.exists?)
  end
  
  def image3?
    (self.image3 != nil and self.image3.exists?)
  end

  def tenant_application_form?
    (self.tenant_application_form != nil and self.tenant_application_form.exists?)
  end

  def image_delete1
    @image_delete1 ||="0"
  end

  def image_delete1=(value)
    @image_delete1 = value
    logger.info "Here"
  end
  
	private
  def destroy_image1?
    if @image_delete1 == "1" and !self.address.image1.dirty?
        self.address.image1 = nil
    end
  end

end
