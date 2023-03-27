class AddJobdescriptionToJobs < ActiveRecord::Migration[7.0]
  def change
    add_column :jobs, :jobdescription, :string
  end
end
