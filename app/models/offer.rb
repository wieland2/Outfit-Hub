class Offer < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :title, :price, :description, :size, presence: true

end
