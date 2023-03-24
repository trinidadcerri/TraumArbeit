class AddColumnsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name,:string
    add_column :users, :role, :string
    add_column :users, :profile_description, :string
    add_column :users, :avatar, :string
    add_column :users, :cv, :string
  end
end
