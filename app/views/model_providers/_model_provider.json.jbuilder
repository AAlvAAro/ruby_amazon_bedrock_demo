json.extract! model_provider, :id, :name, :description, :documentation_url, :created_at, :updated_at
json.url model_provider_url(model_provider, format: :json)
