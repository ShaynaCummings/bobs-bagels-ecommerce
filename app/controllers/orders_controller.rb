class OrdersController < ApplicationController

  def create
    @order = Order.new
    # line_items = { product_id:product_id}
    line_items.each do |item|


    end


    @order = Order.create(order_params)
    render json: @order
  end

  def show
    @order = Order.find(params[:id])
    render json: @order
  end

  def destroy
  end

  private

  def order_params
    params.permit(:user_id, :status, :transaction_id)
  end

end
