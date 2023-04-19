class AddApplicantIdToAppointments < ActiveRecord::Migration[7.0]
  def change
    remove_column :appointments, :user_id
    add_reference :appointments, :applicant, null: false, foreign_key: { to_table: :users}
    add_reference :appointments, :employer, null: false, foreign_key: { to_table: :users}
  end
end
