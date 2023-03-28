class RemoveJobdescriptionFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :jobdescription, :string
  end
end
