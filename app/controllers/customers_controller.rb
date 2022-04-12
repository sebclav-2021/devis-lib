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
    @quote = Quote.new
    @customer = Customer.new
    @from_navbar = params[:from_navbar]
  end

  def create
    @customer = Customer.new(customer_params)
    @from_navbar = params[:from_navbar]
    if @from_navbar != "true"
      if @customer.save
        @quote = Quote.new
        @quote.user = current_user
        @quote.customer = @customer
        if @quote.save
          redirect_to quote_path(@quote)
        else
          redirect_to new_quote_path
        end
      else
        redirect_to new_customer_path
      end
    else
      if @customer.save
        redirect_to customers_path
      else
        redirect_to new_customer_path
      end      
    end
  end

  def edit
  end

  def update
    @customer.update(customer_params)
    redirect_to customer_path
  end

  def show
    @quote = Quote.new
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
