json.array!(@users) do |user|
  json.extract! user, :id, :name, :email, :username, :slug, :admin
  json.url user_url(user, format: :json)
end
