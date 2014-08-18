  class ServiceCallsController < ApplicationController  
  before_action :authenticate_user!
  
  def index 
    @service_calls =ServiceCall.all
  end
  def show
    @service_call = ServiceCall.includes(:services).find_by(:id => params[:id])
  end

  def new
    @service_call = ServiceCall.new
    @customers = Customer.all
    @services = Service.all
    @employee = Employee.all 
  end
  def edit
    @services = Service.all
    @service_call = ServiceCall.find_by(:id=>params[:id])
    @employee = Employee.find_by(:id=>@service_call.employee_id)
    puts @employee
  end
  def update 
    @service_call = ServiceCall.find_by(:id =>params[:id])

    @service_call.service_call_details.destroy_all
    params[:details].each do |detail_name, value|
      @service_call.service_call_details.create(:name => detail_name, :value => value)
    end
    if @service_call.update(update_sc_params)
      flash[:success] = "Service Call has been updated."
      redirect_to service_call_path(@service_call.id)
    else render 'new'
    end 
   
  end

  def create
    @service_call = ServiceCall.new(service_call_params)
    @service = Service.find_by(id: params[:service_id])
      if @service_call.save
        @service_call.services << @service
        flash[:success] = "Service Call has been successfully created"
        redirect_to service_calls_path
      else render 'new' 
      end
  end
    
private
  def service_call_params 
    return params.permit(:customer_id,:user_id, :employee_id)
  end
  def update_sc_params
    return params.permit(:user_id,:status,:service_id) 
  end

end
  

