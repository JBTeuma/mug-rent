class Booking < ApplicationRecord
  belongs_to :mug
  belongs_to :user
end
