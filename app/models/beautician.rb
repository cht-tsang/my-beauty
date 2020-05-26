class Beautician < ApplicationRecord
  belongs_to :user
  has_many :treatments
  
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
