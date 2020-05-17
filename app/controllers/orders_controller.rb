class OrdersController < ApplicationController
  def new
    @wine = Wine.find(params[:wine_id])
  end
end
