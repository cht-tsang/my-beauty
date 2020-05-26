class Review < ApplicationRecord
  belongs_to :booking
  belongs_to :beautician

  validates :title, presence: true
  validates :content, presence: true
  validates :rating, presence: true
end
