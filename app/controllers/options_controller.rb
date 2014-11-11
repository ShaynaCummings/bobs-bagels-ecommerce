class OptionsController < ApplicationController

  def index
    @options = Option.all
    render json: @options
  end

  def show
    @option = Option.find(params[:id])
    render json: @option
  end

  private

    def options_params
      params.permit(:name, :price, :product_id, :lineitem_option_id, :product_option_id)
    end

end
