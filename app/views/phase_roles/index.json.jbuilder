json.array!(@phase_roles) do |phase_role|
  json.extract! phase_role, :id, :phase_id, :role_id
  json.url phase_role_url(phase_role, format: :json)
end
