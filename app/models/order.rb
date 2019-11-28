class Order < ApplicationRecord
  after_create :create_order_items

  belongs_to :user
  has_many :order_items
  has_many :items, through: :order_items
  #wait for stripe

  def create_order_items
    # creation of order items
    current_user.cart.items.each do |item|
      OrderItem.create(item: item, order: current_user.orders.last)
    end
    # empty cart
    current_user.cart.cart_items.each do |cart_item|
      CartItem.destroy_each(cart_item)
      #cart_item.destroy
    end
  end
end
