class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :role, :avatar, :cv, :profile_description])
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :role, :avatar, :cv, :profile_description])
  end
end
