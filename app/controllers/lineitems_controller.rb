class LineitemsController < ApplicationController

  def create
    product = Product.find(params[:product_id])
    @lineitem = Lineitem.create(lineitem_params)
    render json: @lineitem
  end

  def show
    @lineitem = Lineitem.find(params[:id])
    render json: @lineitem
  end

  private

  def lineitem_params
    params.permit(:product_id, :order_id)
  end


end
