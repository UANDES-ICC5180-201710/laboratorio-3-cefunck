json.extract! course, :id, :title, :code, :teacher, :quota, :created_at, :updated_at
json.url course_url(course, format: :json)
