class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :game

  validates :start_date, :end_date, presence: true
  # start_date needs to be after current date
  # end_date needs to be after start_date
  validates :approved, inclusion: { in: [true, false] }
  # validation for approved is either true or false
end
