class Address < ActiveRecord::Base
	belongs_to :apartment

	def line2?
		self.line2 != nil
	end
end
