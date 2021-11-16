class Booking < ApplicationRecord
  belongs_to :mug
  belongs_to :user

  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :status, inclusion: { in: %w[pending deny accepted] }
end
