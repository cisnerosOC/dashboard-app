class Api::V1::CustomersController < ApplicationController
  def index
    render json: Customer.paginate(per_page: 50, page: params[:page])
  end
end