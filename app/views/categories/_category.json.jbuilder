json.extract! category, :id, :name, :created_at, :updated_at
json.url product_url(category, format: :json)
