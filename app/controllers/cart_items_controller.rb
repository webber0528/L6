class CartItemsController < ApplicationController
    

  
  def new
    @cartitems = CartItem.new(product_id: params[:product_id])
  end
  
  def create
    @cartitems = CartItem.new(qty: params[:cart_item][:qty],
    product_id: params[:cart_item][:product_id],
    cart_id: current_cart.id)
    @cartitems.save
      redirect_to root_path

    
  def destroy
    @cartitems = CartItem.find()
  end
    
  end
  

end
