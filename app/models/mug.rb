class Mug < ApplicationRecord
  MUG_SIZES = ["s", "m", "l"]

  has_many :bookings
  has_many :users, through: :bookings
  has_one_attached :photo

  belongs_to :user
  validates :description, presence: true
  validates :color, presence: true
  validates :size, presence: true
  validates :price_by_day, presence: true
  validates :price_by_day, numericality: { only_integer: true }
  validates :size, inclusion: { in: MUG_SIZES, message: "%{value} is not a valid size" }


end
