class OptionsController < ApplicationController

def index

end

def show
  @option = Option.find(params[:id])
  render json: @option
end

end
