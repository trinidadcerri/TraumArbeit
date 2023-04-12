class JobApplication < ApplicationRecord
  belongs_to :user
  belongs_to :job
  has_many :chatrooms, :dependent => :destroy
  enum :status, [ :pending, :accepted, :declined ], default: :pending
end
