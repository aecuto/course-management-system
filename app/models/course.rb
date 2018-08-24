class Course < ApplicationRecord

  def self.search(search)
	  wildcard_search = "%#{search}%"

	  where("name LIKE :search OR cast(start_time as text) LIKE :search", search: wildcard_search)
  end
  
  def edit_link(id)
    "<a href='/courses/#{id}/edit' class='btn btn-warning btn-block'>Edit</a>"
  end

  def delete_link(id)
    "<a href='/courses/#{id}' data-method='delete' data-confirm='Are you sure?'' class='btn btn-danger btn-block'>Delete</a>"
  end

  def as_json(options={})

    if options[:index]
      return {
        name: self.name,
        description: self.description,
        category: self.category,
        subject: self.subject,
        start_time: self.start_time.strftime("%Y-%m-%d %H:%M"),
        end_time: self.end_time.strftime("%Y-%m-%d %H:%M"),
        number_of_student: self.number_of_student,
        edit: edit_link(self.id),
        delete: delete_link(self.id),
      }
    else
      super()
  	end

  end

end
