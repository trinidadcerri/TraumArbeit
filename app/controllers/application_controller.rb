class ApplicationController < ActionController::Base
  before_action :authenticate_user!, :home_page?
  before_action :configure_permitted_parameters, if: :devise_controller?
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :role, :avatar, :cvs, :profile_description])
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :role, :avatar, :cvs, :profile_description])
  end

  def after_sign_in_path_for(resource)
    params[:url] || root_path
  end

  def home_page?
    url = request.url
    @homepage = nil
    p "#{url} this is the url"
    if url[-1] == "/"
      @homepage = true
    else
      @homepage = false
    end
  end
end
