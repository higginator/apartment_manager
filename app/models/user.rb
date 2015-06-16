class User < ActiveRecord::Base

	has_secure_password



	def landlord?
		self.role == 'landlord'
	end

	def tenant?
		self.role == 'tenant'
	end
	
	def admin?
		self.role == 'admin'
	end
end
