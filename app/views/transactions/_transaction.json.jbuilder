json.extract! transaction, :id, :name, :icon, :users_id, :categories_id, :created_at, :updated_at
json.url transaction_url(transaction, format: :json)
