class User < ApplicationRecord
  has_many :mugs
  has_many :bookings
  # méthode pour avoir accès aux reservations des autres users pour ses prepres mugs
  has_many :my_rental_bookings, through: :mugs, source: :bookings
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :address, presence: true
  validates :username, presence: true
  validates :email, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
