class RemoveRoleFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :role, :string
    add_column :users, :job_seeker, :boolean
  end
end
