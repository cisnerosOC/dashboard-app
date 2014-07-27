class ServiceCallsController < ApplicationController  

  def index 
    @service_calls =ServiceCall.all
  end
  def show
    @service_call = ServiceCall.find_by(:id => params[:id])
  end

  def new
    @service_call = ServiceCall.new
  end

  def create
    @service_call = ServiceCall.create(params[:service_call])
    params[:service_call].each do |key,value|

      @service_call.service_call_details.create({:name=>key,:value=>value})
    end
    flash[:success] = 'Service  Successfully created.'
    redirect_to "/service_calls/new"
  end
end
  

end
