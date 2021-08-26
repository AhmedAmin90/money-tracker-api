class Users::RegistrationsController < Devise::RegistrationsController
  def create
    @user = User.new(user_params)

    if @user.save
      render json: @user, status: :created
    else
      render json: { errors: @user.errors,
                     status: :unauthorized }
    end
  end

  private

  def user_params
    params.permit(:username, :password)
  end
end
