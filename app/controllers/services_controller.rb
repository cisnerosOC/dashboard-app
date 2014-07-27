class ServicesController < ApplicationController
def index 
    @services =Service.all
  end
  def show
    @service = Service.find_by(:id => params[:id])
  end

  def new
    @service = Service.new
  end

  def create
    @service = Service.create(service_params)
    flash[:success] = 'Service  Successfully created.'
    redirect_to service_path
  end
  def edit
    @service = Service.find_by(:id =>params[:id])
  end
  def update 
    @service = Service.find_by(:id =>params[:id])

    if @service.update(service_params)
      flash[:success] = "Service Info has been updated!"
      redirect_to service_path
    else render 'new'
    end
  end


private
  def service_params
   return params.require(:service).permit(:name,:description,:price)
  end

end
