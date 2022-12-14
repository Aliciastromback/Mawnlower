class Review < ApplicationRecord
  belongs_to :lawnmower
  belongs_to :user
  has_one_attached :photo
  validates :comment, presence: true
  validates :rating, presence: true, inclusion: { in: 0..5 }
end
