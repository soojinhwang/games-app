class Game < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy

  include PgSearch::Model
  pg_search_scope :search_by_name_and_category,
    against: [ :name, :category, :description ],
    using: {
      tsearch: { prefix: true }
    }

  validates :name, presence: true
  validates :name, length: { minimum: 3 }

  validates :description, presence: true
  validates :description, length: { minimum: 10 }

  validates :category, presence: true, inclusion: { in: ["Video games", "Consoles", "Board games", "Peripherals"],
                                                    message: "%<value> is not a valid category" }
  # This only allows certain categories (the ones in the array)

  validates :location, presence: true

  validates :price_per_day, presence: true, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 1000 }
  # This means the price has to be between 0.00 and 1000.00 (there is also a precision parameter in the schema for this)

  validates :user_id, presence: true

  has_one_attached :photo
  # implement with Cloudinary
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
