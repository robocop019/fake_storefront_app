class Product < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true

  validates :price, presence: true
  validates :price, numericality: {greater_than: 0}

  validates :description, presence: true

  has_many :images
  belongs_to :supplier
  
  has_many :product_categories
  has_many :categories, through: :product_categories

  has_many :carted_products
  has_many :orders, through: :carted_products
  has_many :users, through: :carted_products


  def is_discounted?
    price < 250
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end
end
