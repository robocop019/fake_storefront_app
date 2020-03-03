class User < ApplicationRecord
  has_secure_password

  has_many :orders
  has_many :carted_products
  has_many :products, through: :carted_products

  validates :email, presence: true
  validates :email, uniqueness: true

  def cart
    carted_products.where(status: 'Carted')
  end
  
end
