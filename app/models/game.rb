class Game < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy

  validates :name, presence: true
  validates :name, length: { minimum: 3 }

  validates :description, presence: true
  validates :description, length: { minimum: 10 }

  validates :category, presence: true, inclusion: { in: ["Video games", "Consoles", "Boardgames", "Peripherals"],
                                                    message: "%<value> is not a valid category" }
  # This only allows certain categories (the ones in the array)

  validates :location, presence: true

  validates :price_per_day, presence: true, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 1000 }
  # This means the price has to be between 0.00 and 1000.00 (there is also a precision parameter in the schema for this)

  validates :user_id, presence: true

  # has_one_attached :photo
  # implement with Cloudinary
end
