class DropTimeFieldsFromAppointment < ActiveRecord::Migration[7.0]
  def change
    remove_column :appointments, :time, :datetime
    remove_column :appointments, :start_time, :datetime
    remove_column :appointments, :end_time, :datetime
  end
end
