class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def require_user
  	redirect_to '/login' unless current_user
  end

  def require_landlord
    if current_user
      redirect_to '/' unless current_user.landlord?
    else
      redirect_to '/'
    end
  end

  def require_tenant
    if current_user
      redirect_to '/' unless current_user.tenant?
    else
      redirect_to '/'
    end
  end

  def require_admin
    if current_user
      redirect_to '/' unless current_user.admin?
    else
      redirect_to '/'
    end
  end
  
end
