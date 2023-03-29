class RemoveJobdescriptionFromJobs < ActiveRecord::Migration[7.0]
  def change
    remove_column :jobs, :jobdescription, :string
  end
end
