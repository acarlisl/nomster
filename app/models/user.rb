class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Create an association; each user can create many places
  has_many :places
  # Users can ahve multiple comments
  has_many :comments
  # Users can have many photos
  has_many :photos
end
