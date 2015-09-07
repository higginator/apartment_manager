class Address < ActiveRecord::Base
	belongs_to :apartment

	def line2?
		(self.line2 != nil and !self.line2.empty?)
	end
	
	def city?
    (self.city != nil and !self.city.empty?)
  end
  
  def state?
    (self.state != nil and !self.state.empty?)
  end
  
end
