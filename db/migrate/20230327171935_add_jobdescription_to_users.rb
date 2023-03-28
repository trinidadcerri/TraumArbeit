class AddJobdescriptionToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :jobdescription, :string
  end
end
