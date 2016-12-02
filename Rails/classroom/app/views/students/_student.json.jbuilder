json.extract! student, :id, :name, :teacher, :created_at, :updated_at
json.url student_url(student, format: :json)