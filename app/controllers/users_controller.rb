class UsersController < ApplicationController
  def create
    @user = User.new(user_params)

    if @user.save
      render json: @user, status: :created
    else
      render json: { errors: @user.errors,
                     status: :unauthorized }
    end
  end

  def index
    @users = User.all
    render json: @users
  end

  # GET /cats/1
  def show
    @user = User.find(params[:id])

    render json: {
      user: @user,
      items: @user.items,
      total: @user.total
    }
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
  end
  private

  def user_params
    params.permit(:username, :password)
  end
end
