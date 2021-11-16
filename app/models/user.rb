class User < ApplicationRecord
  has_many :mugs
  has_many :bookings
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :adress, presence: true
  validates :username, presence: true
  validates :email, presence: true
end
