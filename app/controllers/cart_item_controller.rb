class CartItemController < ApplicationController
	before_action :authenticate_user!, only: [:create, :destroy]

	def create
		@item = Item.find(params[:item_id])
		@cart = current_user.cart
		
		CartItem.create(cart: @cart, item: @item)
		redirect_to cart_path(@cart.id)
	end

	def destroy
		@cart = current_user.cart
		@cart_item = CartItem.find(params[:id])
		@cart_item.destroy

		redirect_to cart_path(@cart.id)
	end
end
