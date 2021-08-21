json.extract! user, :id, :id, :first_name, :last_name, :email, :password, :address, :username, :created_at, :updated_at
json.url user_url(user, format: :json)
