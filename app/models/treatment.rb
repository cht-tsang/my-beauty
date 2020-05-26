class Treatment < ApplicationRecord
  belongs_to :beautician

  validates :name, presence: true
  validates :cost, presence: true
  validates :description, presence: true
end
