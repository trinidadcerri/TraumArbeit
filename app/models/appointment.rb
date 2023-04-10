class Appointment < ApplicationRecord
  validates :date, presence: true
  validates :date, uniqueness: { scope: :job }
  validates :time, presence: true
  validates :time, uniqueness: { scope: :job }
  belongs_to :job
  belongs_to :user
  enum :status, [ :pending, :accepted, :declined ], default: :pending
end
