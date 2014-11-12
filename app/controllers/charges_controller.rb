class ChargesController < ApplicationController

  def show
    render json: @charge
  end


  def create
  Stripe.api_key = ENV['PUBLISHABLE_KEY']

    @charge = Charge.new(params[:id])

    # Amount in cents
    # @amount = 500

    # customer = Stripe::Customer.create(
    #   :email => 'example@stripe.com',
    #   :card  => params[:stripeToken]
    # )

    # charge = Stripe::Charge.create(
    #   :customer    => customer.id,
    #   :amount      => @amount,
    #   :description => 'Rails Stripe customer',
    #   :currency    => 'usd'
    # )

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to charges_path
  end

end
