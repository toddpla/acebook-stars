# frozen_string_literal: true

<<<<<<< HEAD
class ApplicationController < ActionController::API
  # protect_from_forgery with: :exception
  include SessionsHelper
  include Response
  include ExceptionHandler
=======
class ApplicationController < ActionController::API
  before_action :authenticate_user!
  include Response
  include ExceptionHandler
>>>>>>> set up devise

  protect_from_forgery with: :exception

  def redirect_to_login
    redirect_to login_url
  end

  private

  def require_login
    # redirect_to login_url unless session[:user_id]
    json_response(status: 401) unless current_user
  end
end
