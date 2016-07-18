json.array!(@roles) do |role|
  json.extract! role, :id, :name, :rank, :admin, :candidate
  json.url role_url(role, format: :json)
end
