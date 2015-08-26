class SessionsController < ApplicationController

  def create
    @session = Session.new(session_params)

    if @session.save
      
    else
      render json: {message: "400 Bad Request"}, status: :bad_request
    end
  end

  def destroy
    @session = Session.find_by_id(params[:id])

    if @session.nil?
      render json: { message: "Cannot find session" }, status: :not_found
    else
      if @session.destroy
        render json: {message:"Successfully left" }
      else
        render json: { message: "Cannot leave" }, status: :bad_request 
      end
    end
  end

  #allow biz_user to change the status of is_completed?
  def update
    @session = Session.find_by_id(params[:id])

    if @session.nil?
      render json: {message: "404 Not Found"}, status: :not_found
    else
      @session.update(session_params)
    end
  end


  #index of sessions under user
  def userIndex
    myUser = User.find_by_id(params[:id])
    @userSessions = Session.where(user_id: myUser.id)
  end

  #index of sessions under biz_user
  def serviceIndex
    myService = Service.find_by_id(params[:id])
    @serviceSessions = Session.where(service_id: myService.id, is_completed?: false)
  end

  #index of completed sessions under biz_user
  def completedServiceIndex
    myService = Service.find_by_id(params[:id])
    @completedServiceSessions = Session.where(service_id: myService.id, is_completed?: true)
  end


  private
  def session_params
    params.require(:session).permit(:user_id, :service_id, :is_completed?)
  end


end
