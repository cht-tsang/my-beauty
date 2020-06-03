class User < ApplicationRecord
  has_many :orders
  has_many :beauticians
  has_many :beautician_treatments, through: :beauticians
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :email, presence: true, uniqueness: true
end
