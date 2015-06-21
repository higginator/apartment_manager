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
		puts 'SO THE APARTMENT IS ABOVE'
		if @apartment.save
			puts 'I SAVED THE APARTMENT AND TRYING TO REDIRECT'
			redirect_to apartments_path
		else
			puts 'CANT EVEN REDIRECT'
			redirect_to apartments_new_path
		end
	end

	private
	  def apartment_params
	  	params.require(:apartment).permit(:address)
	  end
end
