class OrdersController < ApplicationController

  def create


# order = {
#       lineitems:[
#         # The Hub with Everything
#         {
#           product_id: 4,
#           combined_price: 6,
#           line_item_options: [14, 2, 7, 15]
#         },
#         # Latte small
#         {
#           product_id: 10,
#           combined_price: 3.5,
#           line_item_options: [45]
#         }
#       ],
#       status: 'pending',
#       street_address: '50 Melcher Street',
#       city: 'Boston',
#       state: 'MA',
#       zip_code: '02210',
#       delivery_price: 6,
#       order_total: 15.5
#     }


    @order = Order.create(params[:order])

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
    params.permit(:order)
  end

end
