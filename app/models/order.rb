class Order < ApplicationRecord
  belongs_to :user
  #wait for stripe
end
