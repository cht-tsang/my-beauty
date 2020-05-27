class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :treatment

  validates :date, presence: true, on: :update
  validates :time, presence: true, on: :update
  # validates :status, presence: true
end
