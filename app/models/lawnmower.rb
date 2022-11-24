class Lawnmower < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_one_attached :photo
  validates :title, :price, :description, :speed, presence: true

  include PgSearch::Model
  pg_search_scope :search_by_title,
  against: [ :title],
  using: {
    tsearch: { prefix: true }
  }
end
