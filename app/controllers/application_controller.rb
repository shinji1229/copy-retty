class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name,:phonenumber,:budget_lunch,:budget_dinner,:country,:address,:image])
      devise_parameter_sanitizer.permit(:account_update, keys: [:name,:phonenumber,:budget_lunch,:budget_dinner,:country,:address,:image])
  end

  def after_sign_in_path_for(resource)
    case resource
    when User
     user_path(resource)
    when Restaurant
     restaurant_path(resource)
    end
  end




  def after_sign_out_path_for(resource)
    root_path
  end
end
