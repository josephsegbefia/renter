class User < ApplicationRecord
  has_many :shops
  has_many :bookings
  has_many :reviews
  # Include default devise modules. Others available are:
  has_many :shops
  has_many :bookings
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
