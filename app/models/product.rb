class Product < ApplicationRecord
  validates :name, presence: true
  validates :price, presence: true

  has_many :cart_products
  has_many :carts, through: :cart_products
end
