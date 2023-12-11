class Unit < ApplicationRecord
  belongs_to :shop
  has_many :bookings
  has_one_attached :photo

  def self.available(period)
    bookings = Booking.overlap(period)
    where.not(id: bookings.select(:unit_id))
  end

  def available?(period)
    if bookings.loaded?
      bookings.none? { |booking| booking.overlap?(period) }
    else
      bookings.overlap(period).none?
    end
  end
end
