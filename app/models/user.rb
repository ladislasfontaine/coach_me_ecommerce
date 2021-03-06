class User < ApplicationRecord
  after_create :create_cart
  after_create :welcome_send
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :cart
  has_many :orders

  validates :email,
  presence: true,
  uniqueness: true,
  format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: "email adress please" } #check w/ seeds

  validates :password,
  presence: true,
  length: { in: 6..20 }


  # maja test 

  def create_cart
    cart = Cart.create(user_id: self.id)
  end


  def welcome_send
    UserMailer.welcome_email(self).deliver_now
  end

end
