class CartsController < ApplicationController
  def show
    @product_id = current_cart.id
    @cartitems = Cartitem.all
  end
end
