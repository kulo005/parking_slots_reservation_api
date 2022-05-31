json.extract! user, :id, :name, :surname, :email, :role, :phone_number, :disabled, :created_at, :updated_at
json.url user_url(user, format: :json)
