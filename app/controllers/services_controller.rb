class ServicesController < ApplicationController
  before_action :set_service, only: [:edit, :update]

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
      redirect_to categories_path
    else
      redirect_to new_quote_line_service_path
    end
  end

  def update
    @service.update(service_params)
    redirect_to quote_line_services_path
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
