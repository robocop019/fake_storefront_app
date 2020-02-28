class Product < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true

  validates :price, presence: true
  validates :price, numericality: {greater_than: 0}

  validates :description, presence: true

  has_many :images
  has_many :orders
  belongs_to :supplier

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
