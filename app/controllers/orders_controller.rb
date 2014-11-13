class OrdersController < ApplicationController

  def create

    Stripe.api_key = ENV['SECRET_KEY']
    charge = Stripe::Charge.create(
      :card        => parameters[:stripe],
      :amount      => 500,
      :currency    => 'usd'
    )

    @order = Order.create(parameters[:order_info])

    line_item_params.values.each do |item|

      @order.lineitems << Lineitem.create(item[:lineitem])

      item[:lineitem_options].each do |option_id|
        @order.lineitems.last.options << Option.find(option_id)
      end
    end

    @order.save

    render json: @order.as_json(include: [:lineitems])

  end



  def index
    @orders = Order.all

    render json: @orders.as_json(include: [:lineitems])
  end

  private

  def line_item_params
    params.require(:lineitems)
  end

  def parameters

    params.permit(:stripe, :order_info => [:status, :street_address, :city, :state, :zip_code, :delivery_price, :order_total])
  end
end
