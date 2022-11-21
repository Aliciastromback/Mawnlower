class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :lawnmower
end
