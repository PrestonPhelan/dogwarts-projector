class Client < ApplicationRecord
  validates :name, :num_dogs, :dogs, presence: true

  has_many :bookings
end
