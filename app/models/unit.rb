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

  include PgSearch::Model
  pg_search_scope :search_by_title,
  against: [ :title],
  using: {
    tsearch: { prefix: true } # <-- now `superman batm` will return something!
  }
end
