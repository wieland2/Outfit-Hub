class Offer < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :photo
  validates :title, :price, :description, :size, presence: true

end
