class User < ApplicationRecord
  has_many :games, dependet: :destroy
  has_many :bookings, dependent: :destroy

  validates :email, presence: true
  valiadtes :password, presence: true
  validates :username, presence: true

  validates :renter, inclusion: { in: [true, false] }
  validates :owner, inclusion: { in: [true, false] }
end
