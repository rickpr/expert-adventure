json.array!(@users) do |user|
  json.extract! user, :id, :netid, :name
  json.url user_url(user, format: :json)
end
