class BizUsersController < ApplicationController

  def update
    @bizuser = BizUser.find_by_id(params[:id])

    if @bizuser.nil?
      render json: {message: "404 Not Found"}, status: :not_found
    else
      @bizuser.update(bizuser_params)
    end
  end

  def show
    @bizuser = BizUser.find_by_id(params[:id])
    if @bizuser.nil?
      render json: {message: "400 Bad Request"}, status: :bad_request
    end
  end


  def industries
    @industries = BizUser.all.pluck(:industry_name).uniq
    if @industries
      render json: @industries
    end
  end


  def sessions
    myBizUser = BizUser.find_by_id(params[:id])
    @bizusersessions = myBizUser.sessions.where(is_completed: false)
  end

  def completedSessionIndex
    myBizUser = BizUser.find_by_id(params[:id])
    @completedServiceSessions = myBizUser.sessions.where(is_completed: true)
  end

  private

  def bizuser_params
    params.require(:bizuser).permit(:address, :phone_number, :email, :password, :password_confirmation)
  end

end
