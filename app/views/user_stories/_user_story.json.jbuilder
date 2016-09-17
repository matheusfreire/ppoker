json.extract! user_story, :id, :name, :created_at, :updated_at
json.url user_story_url(user_story, format: :json)