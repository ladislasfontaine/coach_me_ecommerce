class Order < ApplicationRecord
  after_create :create_order_items

  belongs_to :user
  has_many :order_items
  has_many :items, through: :order_items
  #wait for stripe

  def create_order_items
    # creation of order items
    self.user.cart.items.each do |item|
      OrderItem.create(item: item, order: self)
    end
    # empty cart
    self.user.cart.cart_items.each do |cart_item|
      cart_item.destroy #_each(cart_item)
    end
  end
end
