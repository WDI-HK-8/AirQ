class ServicesController < ApplicationController

  def index
    @services = Service.all
  end

  def create
    @service = Service.new(service_params)

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

  def show
    @service = Service.find_by_id(params[:id])
    if @service.nil?
      render json: {message: "400 Bad Request"}, status: :bad_request
    end
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

  private
  def service_params
    params.require(:service).permit(:service_name, :biz_user_id, :service_address, :service_phone_num)
  end

end
