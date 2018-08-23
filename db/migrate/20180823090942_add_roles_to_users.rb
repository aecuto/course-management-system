class AddRolesToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :student_role, :boolean, default: true
    add_column :users, :instructor_role, :boolean, default: false
  end
end
