class Unit < ApplicationRecord
  belongs_to :shop
  has_many :bookings
  has_one_attached :photo
end
