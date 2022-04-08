class CustomersController < ApplicationController
  before_action :set_customer, only: [:show, :edit, :update, :destroy]
  def index    
    if params[:query].present?
      @customers = Customer.where("name ILIKE ?", "%#{params[:query]}%")
    else
      @customers = Customer.all
    end
  end

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(customer_params)
    if @customer.save
      redirect_to root_path
    else
      redirect_to new_customer_path
    end
  end

  def edit
  end

  def update
    @customer.update(customer_params)
    redirect_to customer_path
  end

  def show
  end

  def destroy
    @customer.destroy
    redirect_to customers_path
  end

  private

  def customer_params
    params.require(:customer).permit(:name, :address, :email, :phone)
  end

  def set_customer
    @customer = Customer.find(params[:id])
  end
end
