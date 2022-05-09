class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :games, dependent: :destroy
  has_many :bookings, dependent: :destroy

  validates :username, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
end
