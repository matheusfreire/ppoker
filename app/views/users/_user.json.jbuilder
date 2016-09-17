json.extract! user, :id, :name, :email, :profile, :created_at, :updated_at
json.url user_url(user, format: :json)