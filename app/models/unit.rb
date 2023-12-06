class Unit < ApplicationRecord
  belongs_to :shop
  has_many :bookings
end
