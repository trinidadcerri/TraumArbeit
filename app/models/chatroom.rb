class Chatroom < ApplicationRecord
  belongs_to :job_application
  has_many :messages
end
