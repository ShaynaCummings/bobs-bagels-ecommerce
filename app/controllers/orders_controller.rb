class OrdersController < ApplicationController

  def create

    @order = Order.create(order_info_params)

    line_item_params.values.each do |item|
      binding.pry
      @order.lineitems << Lineitem.create(item[:lineitem])

      item[:lineitem_options].each do |option_id|
        @order.lineitems.last.options << Option.find(option_id)
      end
    end

    @order.save


    render json: @order.as_json(include: [:lineitems])
  end

  def show
    @order = Order.find(params[:id])
    render json: @order
  end

  def index
    @orders = Order.all

    render json: @orders.as_json(include: [:lineitems])
  end

  private

  def line_item_params
    params.require(:lineitems)
  end

  def order_info_params
    params.require(:order_info).permit(:status, :street_address, :city, :state, :zip_code, :delivery_price, :order_total)
  end
end
