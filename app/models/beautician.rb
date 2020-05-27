class Beautician < ApplicationRecord
  belongs_to :user
  has_many :treatments
  has_one_attached :banner_photo
  has_many_attached :portfolio_photos
  validates :name, presence: true, uniqueness: true
  validates :location, presence: true
  validates :description, presence: true

  include PgSearch::Model
  pg_search_scope :global_search,
    against: [ :name, :location ],
    associated_against: {
      treatments: [ :name, :category, :cost ]
    },
    using: {
      tsearch: { prefix: true }
    }
end
