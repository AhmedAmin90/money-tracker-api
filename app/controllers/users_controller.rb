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
    # render json: @user
    # @items = @user.items
    @total = 0
    @user.items.each do |item|
      item.expenses.each do |expense|
        @total += expense.expense
      end
    end
    render json: {
      user: @user,
      items: @user.items,
      total: @total
    }
  end

  private

  def user_params
    params.permit(:username, :password)
  end
end
