json.extract! user_training, :id, :state, :training_id, :user_id, :created_at, :updated_at
json.url user_training_url(user_training, format: :json)
