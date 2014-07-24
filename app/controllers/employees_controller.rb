
class EmployeesController < ApplicationController


  def index 
  @employees = Employee.all
  end

  def new
    @employee = Employee.new
  end

  def show
    @employee = Employee.find_by(:id =>params[:id])
  end

  def create
    @employee = Employee.new

    if @employee.save
      flash[:success] = "Employee profile has been successfully created"
      redirect_to employees_path
    else render 'new'
    end
  end
  def edit
    @employee = Employee.find_by(:id =>params[:id])
  end
  def update 
    @employee = Employee.find_by(:id =>params[:id])

    if @employee.update(employee_params)
      flash[:success] = "Employee profile has been successfully updated"
      redirect_to employees_path
    else render 'new'
    end
  end
  def destroy
    @employee = Employee.find_by(:id=>params[:id])

      if @customer.destory ="Employee has been removed from database"
        redirect_to employees_path
      else
        flash[:warning] = "Unsuccessful"
        redirect_to employees_path
      end
    end

private 
  def employee_params 
    return params.require(:employee).permit(:first_name,:middle_name,:last_name,:address,:city,:zip_code,:state,:phone1,:phone2)
  end


end
