class ServicesController < ApplicationController
  before_action :set_service, only: [:edit, :update, :show]

  def new
    @category = Category.find(params[:category_id])
    @service = Service.new
  end

  def create
    @category = Category.find(params[:category_id])
    @service = Service.new(service_params)
    @service.user = current_user
    @service.category = @category
    if @service.save
      redirect_to @service
    else
      render 'categories/index'
    end
  end

  def update
    @service.update(service_params)
    redirect_to quote_line_services_path
  end

  def show
    @product = Product.new
  end

  def create_supply
    @product = Product.find(params[:product_id].to_i)
    @service = Service.find(params[:service_id].to_i)
    @supply = Supply.new(product: @product, service: @service, quantity: params[:quantity].to_i)
    if @supply.save
      redirect_to @service
    else
      render 'show'
    end
  end

  def edit
  end

  private

  def service_params
    params.require(:service).permit(:name, :description, :unite)
  end

  def set_service
    @service = Service.find(params[:id])
  end
end
