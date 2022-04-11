class QuotesController < ApplicationController
  before_action :set_quote, only: [:show, :edit, :update, :destroy]

  def index
    @quotes = Quote.all
  end

  def new
    @customers = Customer.all
    @quote = Quote.new
  end

  def create
    @customer = Customer.find(params[:quote][:customer].to_i)
    @quote = Quote.new(quote_params)
    @quote.user = current_user
    @quote.customer = @customer
    if @quote.save
      redirect_to quote_path(@quote)
    else
      redirect_to new_quote_path
    end
  end

  def edit
  end

  def update
    @quote.update(quote_params)
    redirect_to quote_path
  end

  def show
  end

  def destroy
    @quote.destroy
    redirect_to quotes_path
  end

  private

  def quote_params
    params.require(:quote).permit(:due_date, :payment_choice, :comment, :price, :coeff)
  end

  def set_quote
    @quote = Quote.find(params[:id])
  end
end
