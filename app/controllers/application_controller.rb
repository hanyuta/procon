class ApplicationController < ActionController::Base
  before_action :basic_auth
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  private 

  def configure_permitted_parameters
    if params[:user].present? && params[:user][:admin_password].present?
      admin_password = params[:user][:admin_password]

      if admin_password == ENV["ADMIN_USER_PASSWORD"]
        admin_true = true
      end
    else
      admin_true = false
    end

    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name , :last_name ,:admin_true])
  end

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == ENV["BASIC_AUTH_USER"] && password == ENV["BASIC_AUTH_PASSWORD"]
    end
  end
end
