class OrdersController < ApplicationController

  def create
    @order = Order.create(order_params)
    render json: @order
  end

  def show
    @order = Order.find(params[:id])
    render json: @order
  end

  private

  def order_params
    params.permit(:user_id, :status, :transaction_id)
  end

end
