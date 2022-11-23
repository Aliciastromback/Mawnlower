class Lawnmower < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_one_attached :photo
  validates :title, :price, :description, :speed, presence: true
end
