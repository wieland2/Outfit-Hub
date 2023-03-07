class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         has_many  :offers
         has_many  :bookings
         validates :username, presence: true, length: {maximum: 10}
         has_one_attached :photo
end
