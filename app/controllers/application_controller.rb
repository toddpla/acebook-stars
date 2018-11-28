# frozen_string_literal: true

class ApplicationController < ActionController::API
  before_action :authenticate_user!
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

end
