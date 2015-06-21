class UsersController < ApplicationController
	before_action :require_landlord, only: [:landlord_manage_buildings, :landlord_manage_tenants]

	def signup_landing
	end

	def new_landlord
	  @user = User.new(:role => 'landlord')
	end

	def new_tenant
	  @user = User.new(:role => 'tenant')
	end

	def create
	  @user = User.new(user_params)
	  if @user.save
	  	session[:user_id] = @user.id
	  	redirect_to profile_path
	  else
	  	redirect_to signup_path
	  end
	end

	def profile
		@user = User.find_by_id(session[:user_id])
		if @user.landlord?
			render 'profile_landlord'
		elsif @user.tenant?
			render 'profile_tenant'
		elsif @user.admin?
			render 'profile_admin'
		else
			redirect_to '/'
		end
	end

	def landlord_manage_buildings
	end

	def landlord_manage_tenants
	end


	private
	  def user_params
	    params.require(:user).permit(:first_name, :last_name, :email, :password, :role)
	  end
end
