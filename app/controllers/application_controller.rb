class ApplicationController < ActionController::Base
  include DeviseTokenAuth::Concerns::SetUserByToken

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << [:name]
    devise_parameter_sanitizer.for(:account_update) << [:password, :password_confirmation, :current_password, :name, :first_name, :last_name, :notification, :newsletter]
  end


end
