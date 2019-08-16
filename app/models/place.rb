class Place < ApplicationRecord

  # Default pagination pages to display
  self.per_page = 10

  # Create an association; each place is created by 1 user
  belongs_to :user
  validates :name, presence: true
end
