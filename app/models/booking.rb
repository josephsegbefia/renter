class Booking < ApplicationRecord
  belongs_to :unit
  belongs_to :user

  attribute :status, :integer, default: 0
  enum status: [:pending, :processing, :failed, :succeed]
end
