class CategoriesController < ApplicationController
  def index
    @categories = Category.all
    @category = Category.new
    @service = Service.new
  end

  def create
    @category = Category.new(category_params)
    @category.save
    redirect_to categories_path
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    redirect_to categories_path
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end
end
