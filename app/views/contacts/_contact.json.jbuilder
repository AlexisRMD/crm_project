json.extract! contact, :id, :name, :tel, :email, :type_name, :etat, :created_at, :updated_at
json.url contact_url(contact, format: :json)
