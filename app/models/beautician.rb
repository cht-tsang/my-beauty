class Beautician < ApplicationRecord
  belongs_to :user
  has_many_attached :photos
  validates :name, presence: true, uniqueness: true
  validates :location, presence: true
  validates :description, presence: true
end
