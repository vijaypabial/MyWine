class PagesController < ApplicationController
  def home
  end

  def vineyards
    @vineyards = Vineyard.all
  end

  def wines
  end

  def my_cart
  end

  def contact
  end
end
