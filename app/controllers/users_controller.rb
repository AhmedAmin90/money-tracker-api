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
      @total = 0
      @user.items.each do |item|
        item.expenses.each do |expense|
            @total = @total + expense.expense
         end
      end
      render json: {
        user: @user,
        items: @user.items,
        total: @total
      }
    end
  end