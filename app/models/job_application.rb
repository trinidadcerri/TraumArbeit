class JobApplication < ApplicationRecord
  belongs_to :user
  belongs_to :job
  enum :status, [ :pending, :accepted, :declined ], default: :pending
end
