class Api::AuthenticationController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :validate_params

  respond_to :json

  def authenticate
    user = User.find_for_authentication(email: params[:email])
    if user && user.valid_password?(params[:password])
      render json: user
    else
      render json: { error: 'Wrong Email/Password combination' }, status: 403
    end
  end

  private

  def validate_params
    if !params[:email] || !params[:password]
      return render json: { error: 'Email and Password are required' }, status: 400
    end
  end
end
