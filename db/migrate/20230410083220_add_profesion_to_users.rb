class AddProfesionToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :profesion, :string
  end
end
