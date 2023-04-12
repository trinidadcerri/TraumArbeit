class AddEmployerNameToChatrooms < ActiveRecord::Migration[7.0]
  def change
    add_column :chatrooms, :employer_name, :string
  end
end
