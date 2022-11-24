class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :lawnmower

  enum status: {
    pending: 0,
    active: 1,
    archived: 2
  }
end
