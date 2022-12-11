json.extract! transaction, :id, :contact_id, :product_id, :status, :date_livraison, :created_at, :updated_at
json.url transaction_url(transaction, format: :json)
