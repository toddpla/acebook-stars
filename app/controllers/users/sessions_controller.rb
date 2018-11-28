# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  skip_before_action :authenticate_user!
  respond_to :json

  private

  def respond_with(resource, _opts = {})
    render json: resource
  end

  def respond_to_on_destroy
    head :no_content
  end
  # before_action :configure_sign_in_params, only: [:create]


  # GET /resource/sign_in
  # def new
  #   super
  # end
  #
  # POST '/users/sign_in'
  # def create
  #   super
  # end
  #
  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end
  #
  # protected
  #
  # # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end

end




# frozen_string_literal: true

# class SessionsController < ApplicationController
#   skip_before_action :require_login
#
#   def new; end
#
#   def create
#     user = User.find_by(email: params[:session][:email].downcase)
#     if user&.authenticate(params[:session][:password])
#       log_in user
#       json_response(user)
#     else
#       json_response(@user, 401)
#       # flash.now[:danger] = 'Invalid email/password combination!'
#       # render 'new'
#     end
#   end
#
#   def destroy
#     log_out
#     json_response(message: "logged out")
#   end
#
#   def session_params
#     params.require(:session).permit(:email, :password)
#   end
# end
