json.extract! lesson, :id, :name, :level, :content, :image, :created_at, :updated_at
json.url lesson_url(lesson, format: :json)