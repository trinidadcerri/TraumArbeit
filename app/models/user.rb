class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  include PgSearch::Model
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one_attached :avatar
  has_many_attached :cvs
  has_many :jobs
  pg_search_scope :search_by_profesion_and_location,
  against: [ :profesion, :location ],
  using: {
    tsearch: { prefix: true }
  }
end
