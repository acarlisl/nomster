class Place < ApplicationRecord

  # Default pagination pages to display
  self.per_page = 10

  # Create an association; each place is created by 1 user
  belongs_to :user
  # A place can have multiple comments
  has_many :comments

  geocoded_by :address
  after_validation :geocode

  # Validations for place input
  validates :name, presence: true, length: { minimum: 4 }
  validates :address, presence: true
  validates :description, presence: true
end
