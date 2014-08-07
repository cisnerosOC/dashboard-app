class CustomersController < ApplicationController
  before_action :authenticate_user!
  def index
    @customers = Customer.all
  end
  def new
    @customer = Customer.new
  end
  def show
    @customer = Customer.find_by(:id => params[:id])
  end

  def create
    @customer = Customer.new(customer_params)
    if @customer.save
      flash[:success] = "Link created successfully"
      redirect_to customers_path
      else render 'new'
    end
  end
  def edit
    @customer = Customer.find_by(:id => params[:id])
  end

  def update
    @customer = Customer.find_by(:id => params[:id])

     if @customer.update(customer_params)
      flash[:success] = "Link updated successfully"
      redirect_to customers_path
      else render 'new'
    end
  end
  def destroy
    @customer = Customer.find_by(:id => params[:id])

     if @customer.destroy
      flash[:success] = "Link deleted successfully"
      redirect_to customers_path
      else flash[:warning] = "Unsuccessful"
        redirect_to customers_path
      end
  end


private 
  def customer_params 
    return params.require(:customer).permit(:first_name,:last_name,:address,:city,:zip_code,:state,:phone1,:phone2)
  end

end