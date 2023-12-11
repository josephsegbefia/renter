class Unit < ApplicationRecord
  belongs_to :shop
  has_many :bookings
  has_one_attached :photo

  include PgSearch::Model
  pg_search_scope :search_by_title,
  against: [ :title],
  using: {
    tsearch: { prefix: true } # <-- now `superman batm` will return something!
  }
end
