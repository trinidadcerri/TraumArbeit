class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :job
  validates :date, presence: true
end
