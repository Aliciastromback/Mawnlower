class Lawnmower < ApplicationRecord
  belongs_to :user
  validates :title, :price, :description, :speed, presence: true
end
