# frozen_string_literal: true

class ApplicationController < ActionController::API
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  include Response
  include ExceptionHandler

  def redirect_to_login
    redirect_to login_url
  end

  private

  def require_login
    # redirect_to login_url unless session[:user_id]
    json_response(status: 401) unless current_user
  end

  def configure_permitted_parameters
    added_attrs = [:email, :password, :password_confirmation]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  end

end
