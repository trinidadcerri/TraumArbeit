class DropStatusFromAppointment < ActiveRecord::Migration[7.0]
  def change
    remove_column :appointments, :status, :integer
  end
end
