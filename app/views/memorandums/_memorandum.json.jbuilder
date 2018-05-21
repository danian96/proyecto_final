json.extract! memorandum, :id, :title, :description, :memorandum_type_id, :user_id, :created_at, :updated_at
json.url memorandum_url(memorandum, format: :json)
