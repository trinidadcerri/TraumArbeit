class AddApplicantIdToAppointments < ActiveRecord::Migration[7.0]
  def change
    add_reference :appointments, :applicant, null: false, foreign_key: { to_table: :users}
    rename_column :appointments, :user_id, :employer_id
  end
end
