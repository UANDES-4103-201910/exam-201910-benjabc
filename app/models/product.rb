class Product < ApplicationRecord
 has_many :order_products
 has_many :orders through: :order_product

 validates :brand,  presence: true
 validates :model, presence: true
 validates :shortDescription, presence: true
 validates :longDescription, presence: true
 validates :price, numericality: true,  presence: true
end
