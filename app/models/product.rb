class Product < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true

  validates :price, presence: true
  validates :price, numericality: {greater_than: 0}

  validates :description, presence: true
  validates :description, length: {in: 50..200}

  validates :image_url, length: {maximum: 255}


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
