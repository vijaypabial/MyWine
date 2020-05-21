class OrdersController < ApplicationController
  before_action :authenticate_user!
  def new
    @wine = Wine.find(params[:wine_id])
    Stripe.api_key = Rails.application.credentials.dig(:stripe, :secret_key)
    @session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: [{
        name: @wine.title,
        description: "by #{@wine.description}",
        images: [@wine.wine_image],
        amount: (@wine.price * 100).to_i,
        currency: 'aud',    
        quantity: 1,
    }],
    success_url: 'https://my-wine.herokuapp.com/wines',
    cancel_url: 'https://my-wine.herokuapp.com/wines',
    )
  end
  def complete
    
  end
end
