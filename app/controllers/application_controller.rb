class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_action :authenticate_user!
  before_action :configure_permitted_parameter, if: :devise_controller?

  protect_from_forgery with: :exception
  
  def configure_permitted_parameter
    devise_parameter_sanitizer.for(:sign_up) << :nickname
  end

  def index
  end

 
end
