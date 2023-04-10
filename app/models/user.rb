class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  include PgSearch::Model
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one_attached :avatar
  has_many_attached :cvs
  has_many :jobs
  pg_search_scope :search_by_profile_description,
  against: [ :profile_description ],
  using: {
    tsearch: { prefix: true }
  }
end
