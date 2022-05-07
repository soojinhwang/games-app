class Game < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy

  validates :name, presence: true

  validates :category, presence: true
  validates :category, inclusion: { in: ["Video games", "Consoles", "Boardgames", "Peripherals"],
                                    message: "%{value} is not a valid category" }

  validates :description, presence: true
  validates :location, presence: true

  validates :price_per_day, presence: true
  validates :price_per_day, numericality: { only_integer: true }
  validates :price_per_day, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 1000 }

  validates :user_id, presence: true
end
