class ProductsController < ApplicationController

  def index
    if params[:category_id]
      @category = Category.find(params[:category_id])
      @products = @category.products
    else
      @products = Product.includes(:category, :options).all
    end

    render json: @products.as_json(include: [:category, :options])
  end

  def show
    @product = Product.find(params[:id])
    render json: @product
  end


  private

    def products_params
      params.permit(:name, :price, :category_id)
    end

end
