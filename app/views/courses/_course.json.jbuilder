json.extract! course, :id, :name, :description, :category, :subject, :start_time, :end_time, :number_of_student, :created_at, :updated_at
json.url course_url(course, format: :json)
