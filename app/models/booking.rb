class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :treatment

  validates :date, presence: true
  validates :time, presence: true
  # validates :status, presence: true
end
