class OrdersController < ApplicationController

  def create


# order = {
#   lineitems:[

#     {
#       lineitem: {
#         product_id: 4,
#         combined_price: 6
#       },
#       lineitem_options: [14, 2, 7, 15]
#     },

#     {
#       lineitem: {
#         product_id: 10,
#         combined_price: 3.5
#       },
#       lineitem_options: [45]
#     }
#   ],
#   order_info:{
#     status: 'pending',
#     street_address: '50 Melcher Street',
#     city: 'Boston',
#     state: 'MA',
#     zip_code: '02210',
#     delivery_price: 6,
#     order_total: 15.5
#   }
# }
    order_hash = eval(params[:order])
    @order = Order.create(order_hash[:order_info])
    order_hash[:lineitems].each do |item|
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

end
