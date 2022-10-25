class CartitemsController < ApplicationController
  def new
    @cartitem = Cartitem.new(product_id: params[:product_id])
  end
  
  def create
    cart = Cartitem.new(
      product_id: params[:cartitem][:product_id],
      cart_id: current_cart.id,
      qty: params[:cartitem][:qty])
    if cart.save
      flash[:success] = "saved"
      redirect_to root_path
    else
      flash.now[:danger] = "error"
      render '/cartitems/new'
    end
  end
  
  def destroy
    cartitem = Cartitem.find(params[:id])
    cartitem.destroy
    redirect_to root_path
  end
end
