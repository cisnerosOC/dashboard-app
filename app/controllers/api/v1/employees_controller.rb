class Api::V1::EmployeesController < ApplicationController
  def index
    render json: Employee.all
  end
end