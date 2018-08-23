class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.string :name
      t.text :description
      t.string :category
      t.string :subject
      t.datetime :start_time
      t.datetime :end_time
      t.integer :number_of_student

      t.timestamps
    end
  end
end
