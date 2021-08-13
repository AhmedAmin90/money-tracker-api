class Users::RegistrationsController < Devise::RegistrationsController
    def create 
        @user = User.new(user_params)

        if @user.save
          render json: @user, status: :created
        else
        render json: { errors: @user.errors, message: 'Email is already in use. If you are the owner then try to login.', status: :unauthorized }
        end
    end

    private
    def user_params
        params.permit(:username, :email, :password)
    end
end