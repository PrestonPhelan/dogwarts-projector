class Booking < ApplicationRecord
  belongs_to :client

  validates :first_contact_date,
    :source,
    :status,
    :type,
    :price_seen,
    presence: true

  validates_inclusion_of :source, in: %w(DogVacay Rover Other)
  validates_inclusion_of :status, in: %w(Pending Accepted Declined Cancelled)
  validates_inclusion_of :type, in: %w(Boarding Daycare)
end
