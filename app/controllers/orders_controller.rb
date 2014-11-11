class OrdersController < ApplicationController

  def create

    @order = Order.new(order_params)

    #parse lineitems from JSON object and shovel into an array
    lineitems  #blahblah javascript
    lineitems.each do |item|
      lineitems << item
    end

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
