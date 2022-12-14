class ApplicationController < ActionController::Base
  before_action :authenticate_user!, except: :index
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:address, :photo, :name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:address, :photo, :name])
  end
end
