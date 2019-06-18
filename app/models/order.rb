class Order < ApplicationRecord
  belongs_to :user
  has_many :order_products
  has_one :deliveryinfo
end

