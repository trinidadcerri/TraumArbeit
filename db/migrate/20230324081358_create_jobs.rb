class CreateJobs < ActiveRecord::Migration[7.0]
  def change
    create_table :jobs do |t|
      t.string :position
      t.string :description
      t.integer :salary
      t.string :level
      t.string :address
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
