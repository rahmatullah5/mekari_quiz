json.extract! quiz, :id, :level_id, :hint_images, :hint, :cover, :answer, :point, :created_at, :updated_at
json.url quiz_url(quiz, format: :json)
