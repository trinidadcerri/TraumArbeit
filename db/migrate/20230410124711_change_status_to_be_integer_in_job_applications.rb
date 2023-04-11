class ChangeStatusToBeIntegerInJobApplications < ActiveRecord::Migration[7.0]
  def change
    change_column :job_applications, :status, :integer, using: 'status::integer'
  end
end
