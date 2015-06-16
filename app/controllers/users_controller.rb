class UsersController < ApplicationController

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
	  	redirect_to '/'
	  else
	  	redirect_to '/signup'
	  end
	end

	private
	  def user_params
	    params.require(:user).permit(:first_name, :last_name, :email, :password, :role)
	  end
end
