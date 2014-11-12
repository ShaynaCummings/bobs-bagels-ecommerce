class OrdersController < ApplicationController

  def create

  Stripe.api_key = ENV['SECRET_KEY']

    token = params[:stripeToken]

    begin
      charge = Stripe::Charge.create(
        :amount => 100, # but we need to set :amount to order_total; unsure how to access that
        :currency => "usd",
        :card => token,
        :description => "payinguser@example.com"
      )

    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to charges_path
    end


    @order = Order.create(order_info_params)

    line_item_params.values.each do |item|

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

  def order_info_params  # George, I had to change line 57 because :order_info wasn't an attribute that i can find anywhere??
    params.permit(:status, :street_address, :city, :state, :zip_code, :delivery_price, :order_total)
     # this is what was there previously:
     # params.require(:order_info).permit(:status, :street_address, :city, :state, :zip_code, :delivery_price, :order_total)
  end
end
