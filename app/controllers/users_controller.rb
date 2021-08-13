class UsersController < ApplicationController
    def index
      @users = User.all
      render json: @users
    end
  
    # GET /cats/1
    def show
      @user = User.find(params[:id])
      # render json: @user
      # @items = @user.items
      render json: {
        user: @user,
        items: @user.items
      }
    end
  end