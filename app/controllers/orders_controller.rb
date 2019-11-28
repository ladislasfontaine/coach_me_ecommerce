class OrdersController < ApplicationController
	before_action :authenticate_user!

	def new
		@order_amount = 0
		current_user.cart.items.each{ |item| @order_amount += item.price }
	end

	def create		
		# Amount in cents
		@order_amount = 0
		current_user.cart.items.each{ |item| @order_amount += item.price }
		@amount = (@order_amount * 100).to_i
	
		customer = Stripe::Customer.create({
			email: params[:stripeEmail],
			source: params[:stripeToken],
		})
	
		charge = Stripe::Charge.create({
			customer: customer.id,
			amount: @amount,
			description: 'Rails Stripe customer',
			currency: 'eur',
		})

		if charge["paid"] == true
			#Save customer to the db
			# A AJOUTER : stripe_customer_id: customer.id
			Order.create(user: current_user)

			flash[:notice] = "Paiement réussi. Bravo."
			redirect_to orders_path
		end

    rescue Stripe::CardError => e
      flash[:alert] = e.message
      redirect_to cart_path(current_user.id)

	end

	def index
		@orders = current_user.orders
	end
end
