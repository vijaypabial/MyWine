class PagesController < ApplicationController
  before_action :authenticate_user!, only: [:my_wines]
  def home
  end

  def my_cart
    @page_title = "My-cart"
  end

  def contact
    @page_title = "Contact-us"
  end
end
