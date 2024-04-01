class HomeController < ApplicationController

  def index
    @products = Product.all
    @items = Item.includes(:product).in_stock
  end
end
