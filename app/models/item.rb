class Item < ApplicationRecord
  belongs_to :category
  has_many :cart_items
  has_many :carts, through: :cart_items
  has_many :order_items
  has_many :orders, through: :order_items

#initialize validations
  validates :title,
  presence: true,
  length: { in: 6..40 }


  validates :description,
  presence: true,
  length: { minimum: 100 }

  validates :image_url,
  presence: true

  validates :price,
  presence: true,
  exclusion: { in: %w(1),
  message: "%{value} can't be less than 1" }



end
