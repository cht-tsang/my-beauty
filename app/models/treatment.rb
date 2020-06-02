class Treatment < ApplicationRecord
  has_many :beauticians, through: :beautician_treatment

  validates :name, presence: true
  validates :cost, presence: true
  validates :description, presence: true
end
