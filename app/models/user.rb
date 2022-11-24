class User < ApplicationRecord
  has_one_attached :photo
  has_many :bookings
  has_many :lawnmowers, dependent: :destroy
  has_many :reviews
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable
end
