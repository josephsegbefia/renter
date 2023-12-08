class Shop < ApplicationRecord
  # has_one_attached :photo
  validates :title, :description, presence: true
  has_many :units
  has_many :bookings, through: :units
  belongs_to :user
  # validates :user, uniqueness: true
end
