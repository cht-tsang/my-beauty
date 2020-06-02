class Beautician < ApplicationRecord
  belongs_to :user
  has_many :beautician_treatments
  has_many :treatments, through: :beautician_treatments
  has_many :bookings, through: :treatments
  has_many :reviews, dependent: :destroy
  has_one_attached :banner_photo
  has_many_attached :portfolio_photos
  validates :name, presence: true, uniqueness: true
  validates :location, presence: true
  validates :description, presence: true

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

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
