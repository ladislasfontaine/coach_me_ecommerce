class CartItemController < ApplicationController
 # before_action :authenticate_user, only: [:create, :destroy]

	def create
		@item = Item.find(params[:item_id])
		@cart = Cart.find(current_user.id)
		
		CartItem.create(cart: @cart, item: @item)
		redirect_to cart_path(current_user.id)
	end

	def destroy
		@cart_item = CartItem.find(params[:id])
		@cart_item.destroy

		redirect_to cart_path(current_user.id)
		
	end

	private

	def authenticate_user
		# maybe flesh ? 
		redirect_to new_user_session_path
	end



end # class
