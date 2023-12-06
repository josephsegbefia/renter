class Review < ApplicationRecord
  belongs_to :booking
  belongs_ro :user
end
