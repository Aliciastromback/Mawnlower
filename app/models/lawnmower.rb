class Lawnmower < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many_attached :photos
  validates :title, :price, :description, :speed, presence: true
end
