class CartsController < ApplicationController
	before_action :authenticate_user!, only: [:show]
	before_action :is_owner

	def show
		@cart = current_user.cart
		@cart_items = @cart.cart_items
		
		@total = 0
		@cart.items.each{ |item| @total += item.price }
	end

	private

	def is_owner
		params[:id] == current_user.cart.id ? true : false
	end
end
