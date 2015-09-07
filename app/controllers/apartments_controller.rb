class ApartmentsController < ApplicationController
	#before_action :require_user, only: [:index, :show]
	before_action :require_landlord, only: [:new]

	def index
	  @apartments = Apartment.all
	end

	def show
		@apartment = Apartment.find(params[:id])
		@user ||= User.find_by_id(session[:user_id]) if session[:user_id]
	end

	def new
		@apartment = Apartment.new
		@address = Address.new
	end
	
	def edit_address
    @apartment = Apartment.find(params[:id])
    @address = @apartment.address
  end
  
  def update_address
    @apartment = Apartment.find(params[:id])
    @address = @apartment.address
    if @address.update_attributes(address_params)
      redirect_to edit_apartment_path(@apartment)
    else
      render 'edit_address'
    end
  end
  
  def edit
    @apartment = Apartment.find(params[:id])
  end
  
  def update
    @apartment = Apartment.find(params[:id])
    if @apartment.update_attributes(apartment_params)
      redirect_to profile_manage_properties_path
    else
      redirect_to edit_apartment_path(@apartment)
    end
  end


	def create
		@apartment = Apartment.new
		@address = Address.new(address_params)
		@user = User.find_by_id(session[:user_id])
		if @apartment.save
			@apartment.address = @address
			@user.apartments.push(@apartment)
			redirect_to edit_apartment_path(@apartment)
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
    params.require(:address).require(:line1)
    params.require(:address).require(:city)
    params.require(:address).require(:state)
    params.require(:address).require(:zip)
    params.require(:address).permit(:line1, :line2, :city, :state, :zip)
  end
    
  private
  def apartment_params
    params.require(:apartment).permit(:address, :image1, :image2, :image3, :full_bathroom, :half_bathroom, :rooms)
  end  
end
