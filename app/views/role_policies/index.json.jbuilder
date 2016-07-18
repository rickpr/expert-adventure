json.array!(@role_policies) do |role_policy|
  json.extract! role_policy, :id, :administrator_role_id, :managed_role_id, :within
  json.url role_policy_url(role_policy, format: :json)
end
