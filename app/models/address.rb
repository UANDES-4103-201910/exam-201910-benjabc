class Address < ApplicationRecord
  belongs_to :user
  validates :phone, numericality: true,  presence: true
  validates :adress1, presence: true
  validates :adress2, presence: true
  validates :city, presence: true
  validates :country, presence: true
  validates :zip, numericality: true,  presence: true
end
