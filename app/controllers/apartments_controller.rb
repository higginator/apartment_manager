class ApartmentsController < ApplicationController
	before_action :require_user, only: [:index, :show]
	before_action :require_landlord, only: [:new]

	def index
	  @apartments = Apartment.all
	end

	def show
		@apartment = Apartment.find(params[:id])
	end

	def new
		@apartment = Apartment.new
	end

	def create
		@apartment = Apartment.new(apartment_params)
		@user = User.find_by_id(session[:user_id])
		if @apartment.save
			@user.apartments.push(@apartment)
			redirect_to profile_manage_properties_path
		else
			redirect_to apartments_new_path
		end
	end

	private
	  def apartment_params
	  	params.require(:apartment).permit(:address)
	  end
end
