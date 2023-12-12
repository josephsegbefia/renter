class Booking < ApplicationRecord
  belongs_to :unit
  belongs_to :user

  validates_presence_of :start_date, :end_date
  attribute :status, :integer, default: 0
  enum status: [:pending, :processing, :failed, :succeed]
end
