class Job < ApplicationRecord
  include PgSearch::Model
  belongs_to :user
  pg_search_scope :search_by_position_and_address,
                  against: %i[position address],
                  using: {
                    tsearch: { prefix: true }
                  }
  has_many :favorites, dependent: :destroy

  has_many :job_applications, dependent: :destroy
  has_many :users, through: :job_applications

  has_many :appointments, dependent: :destroy
end
