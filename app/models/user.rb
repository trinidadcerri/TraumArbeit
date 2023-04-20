class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  include PgSearch::Model
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one_attached :avatar
  has_many_attached :cvs

  has_many :jobs

  has_many :job_applications, dependent: :destroy
  has_many :applicants, through: :job_applications, source: :user

  has_many :appointments

  has_many :favorites
  has_many :favorite_jobs, through: :favorites, source: :job

  pg_search_scope :search_by_profesion_and_location,
                  against: %i[profesion location],
                  using: {
                    tsearch: { prefix: true }
                  }
end
