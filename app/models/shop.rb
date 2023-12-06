class Shop < ApplicationRecord
  has_one_attached :photo
  validates :title, :description, presence: true
  has_many :units
  belongs_to :user
end
