json.extract! model, :id, :name, :description, :documentation_url, :model_provider_id, :created_at, :updated_at
json.url model_url(model, format: :json)
