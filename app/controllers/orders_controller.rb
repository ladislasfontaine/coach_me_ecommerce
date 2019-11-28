class OrdersController < ApplicationController
	# before_action :authenticate_user

	def create

		# ajouter stripe ici

		Order.create(user: current_user)
	end

	def index
		@orders = current_user.orders
	end
end
