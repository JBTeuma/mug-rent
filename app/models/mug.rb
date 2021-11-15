class Mug < ApplicationRecord
  has_many :bookings
  has_many :users, through: :bookings
  has_one_attached :photo

  belongs_to :user
end
