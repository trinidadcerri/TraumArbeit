class ChangeColumnNameChatrooms < ActiveRecord::Migration[7.0]
  def change
    rename_column :chatrooms, :name, :applicant_name
  end
end
