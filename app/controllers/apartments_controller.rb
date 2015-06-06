class ApartmentsController < ApplicationController
	before_action :require_user, only: [:index, :show]

	def index
	  @apartments = Apartment.all
	end

	def show
		@apartment = Apartment.find(params[:id])
	end
end
