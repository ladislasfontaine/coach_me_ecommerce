class CartsController < ApplicationController
	before_action :authenticate_user, only: [:index , :delete_item]

	## def update
		#@cart_item = CartItem.new(item_id: params[:id], cart_id: current_user.cart.id)
		##if !@cart_item.save
			#puts "#{@cart_item.error}"

			
		##end
	##end # update

	def show
		@cart = current_user.cart
		@cart_items = @cart.cart_items
		
		@total = 0
		@cart.items.each{ |item| @total += item.price }
	end # show


end # class 
