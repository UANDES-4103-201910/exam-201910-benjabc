class Deliveryinfo < ApplicationRecord
  belongs_to :order
  validates :billingAddress, presence: true
  validates :shippingAddress, presence: true
end
