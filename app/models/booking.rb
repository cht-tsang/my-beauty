class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :treatment

  monetize :price_cents

  validates :date, presence: true, on: :update
  validates :time, presence: true, on: :update
  # validates :status, presence: true
end
