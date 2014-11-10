class OptionsController < ApplicationController

def index
  @options = Option.all
  render json: @options
end

def show
  @option = Option.find(params[:id])
  render json: @option
end

end
