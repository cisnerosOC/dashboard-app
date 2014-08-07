class ServiceCallsController < ApplicationController  
  before_action :authenticate_user!
  
  def index 
    @service_calls =ServiceCall.all
  end
  def show
    @service_call = ServiceCall.find_by(:id => params[:id])
  end

  def new
    @service_call = ServiceCall.new
    @customers = Customer.all
  end

  def create
    @service_call = ServiceCall.new(service_call_params)
      if @service_call.save 
        flash[:success] = "Employee profile has been successfully created"
        redirect_to service_callpath
      else render 'new' 
      end
  end
    
private
  def service_call_params 
    return params.permit(:customer_id)
  end

end
  

