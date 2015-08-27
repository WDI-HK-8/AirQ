class ServicesController < ApplicationController
  before_action :authenticate_biz_user, :except => [:show, :index]
  
  def index
    @services = Service.all
  end

  def create
    @service = current_biz_user.services.new(service_params)

    if @service.save

    else
      render json: {message: "400 Bad Request"}, status: :bad_request
    end
  end

  def update
    @service = Service.find_by_id(params[:id])

    if @service.nil?
      render json: {message: "404 Not Found"}, status: :not_found
    else
      @service.update(service_params)
    end
  end

  def showSessions
     @serviceSessions  = Service.find_by_id(params[:id]).sessions.where(is_completed?: false)
  end

  def showCompletedSessions
     @serviceCompletedSessions  = Service.find_by_id(params[:id]).sessions.where(is_completed?: true)
  end


  #show case all the services under that biz user
  def bizIndex
    myBizUser = BizUser.find_by_id(params[:id])
    @bizservices = Service.where(biz_user_id: myBizUser.id)    
  end

  def destroy
    @service =Service.find_by_id(params[:id])

    if @service.nil?
      render json: { message: "Cannot find service" }, status: :not_found
    else
      if @service.destroy
        render json: {message: "Successfully deleted" }
      else
        render json: { message: "Unsuccessfully deleted" }, status: :bad_request 
      end
    end
  end

  def service_id_thru_name(service_name)
    @service = Service.where(service_name: service_name).select(:id);
    render json: @service
  end

  private
  def service_params
    params.permit(:service_name, :service_address, :service_phone_num)
  end

end
