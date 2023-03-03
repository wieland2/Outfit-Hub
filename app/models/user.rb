class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         has_many :offers
         has_many :bookings
         has_many :bookings, through: :offers, source: :bookings
         validates :username, :password, :email, presence: true
         validates :username, :password, length: { minimum: 6}
         validates :username, :email, uniqueness: true
         validates :email, format: { with: /\A.*@.*\.com\z/ }
end
