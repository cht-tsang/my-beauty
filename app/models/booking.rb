class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :beautician_treatment
  has_one :review

  monetize :price_cents

  validates :date, presence: true, on: :update
  validates :time, presence: true, on: :update
  # validates :status, presence: true
end
