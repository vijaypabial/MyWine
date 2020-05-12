class PagesController < ApplicationController
  def home
  end

  def vineyards
    @vineyards = Vineyard.all
  end

  def wines
    @wines = Wine.all
  end

  def my_cart
  end

  def contact
  end
end
