class Appointment < ApplicationRecord
  validates :date, presence: true
  validates :date, uniqueness: { scope: :job }
  belongs_to :job

  belongs_to :employer, class_name: 'User'
  belongs_to :applicant, class_name: 'User'
end
