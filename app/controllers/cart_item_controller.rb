class CartItemController < ApplicationController
 before_action :authenticate_user, only: [:show, :index, :create, :destroy]

 def create
 	@item = Item.find(params[:id])
 	puts "=================="
 	puts @item
 	puts "=================="
 	CartItem.create(cart: current_user.cart, item: @item)
 	
 end

 def show
 	 @cart_items = CartItem.find(params [:id])
 	
  end

 def destroy
 	@cart_items = CartItem.find(params [:id])
 	@cart_items.destroy
 	# yes or no ?  
 	redirect_to root_path 
 	
 end

 private

 def authenticate_user
 	# maybe flesh ? 
 	redirect_to new_user_session_path
 end



end # class
