class ApartmentsController < ApplicationController
	#before_action :require_user, only: [:index, :show]
	before_action :require_landlord, only: [:new]

	def index
	  @apartments = Apartment.all
	end

	def show
		@apartment = Apartment.find(params[:id])
	end

	def new
		@apartment = Apartment.new
		@address = Address.new
	end

	def create
		@apartment = Apartment.new
		@address = Address.new(address_params)
		@user = User.find_by_id(session[:user_id])
		if @apartment.save
			@apartment.address = @address
			@user.apartments.push(@apartment)
			redirect_to profile_manage_properties_path
		else
			redirect_to apartments_new_path
		end
	end

	def destroy
		Apartment.destroy(params[:id])
		redirect_to profile_manage_properties_path
	end

	private
	#  def apartment_params
	#  	params.require(:apartment).permit(:address)
	#  end
	  def address_params
	  	params.require(:address).permit(:line1, :line2, :city, :state, :zip)
	  end
end
