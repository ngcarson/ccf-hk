class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
  	devise_parameter_sanitizer.permit(:sign_up, keys: [:surname])
  	devise_parameter_sanitizer.permit(:account_update, keys: [:surname])

  	devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name])
  	devise_parameter_sanitizer.permit(:account_update, keys: [:first_name])

  	devise_parameter_sanitizer.permit(:sign_up, keys: [:middle_name])
  	devise_parameter_sanitizer.permit(:account_update, keys: [:middle_name])

  	devise_parameter_sanitizer.permit(:sign_up, keys: [:date_of_birth])
  	devise_parameter_sanitizer.permit(:account_update, keys: [:date_of_birth])

  	devise_parameter_sanitizer.permit(:sign_up, keys: [:email])
  	devise_parameter_sanitizer.permit(:account_update, keys: [:email])

    devise_parameter_sanitizer.permit(:sign_up, keys: [:password])
    devise_parameter_sanitizer.permit(:account_update, keys: [:password])

    devise_parameter_sanitizer.permit(:sign_up, keys: [:current_password])
    devise_parameter_sanitizer.permit(:account_update, keys: [:current_password])

    devise_parameter_sanitizer.permit(:sign_up, keys: [:is_female])
    devise_parameter_sanitizer.permit(:account_update, keys: [:is_female])
  end
end
