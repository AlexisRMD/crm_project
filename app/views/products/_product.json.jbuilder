json.extract! product, :id, :name, :category_id, :price, :remaining_quantity, :created_at, :updated_at
json.url product_url(product, format: :json)
