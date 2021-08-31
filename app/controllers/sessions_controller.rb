class SessionsController < ApplicationController
  def create
    @user = User.find_by(username: params[:username])
    if @user&.valid_password?(params[:password])
      render json: @user, status: :created
    else
      render json: { message: 'Incorrect! Please check your Username or Password.', status: :unauthorized }
    end
  end
end
