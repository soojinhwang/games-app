class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :game

  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :approved, inclusion: { in: [true, false] }

  validates :user_id, presence: true
  validates :game_id, presence: true
end
