class UsersController < ApplicationController
before_action :authenticate_user!
  def update
    @user = User.find_by_id(params[:id])

    if @user.nil?
      render json: {message: "404 Not Found"}, status: :not_found
    else
      @user.update(user_params)
    end
  end

  def show
    @user = User.find_by_id(params[:id])
    if @user.nil?
      render json: {message: "400 Bad Request"}, status: :bad_request
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :phone_number, :email, :password, :password_confirmation)
  end


end
