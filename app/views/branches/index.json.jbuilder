json.array!(@branches) do |branch|
  json.extract! branch, :id, :name, :type
  json.url branch_url(branch, format: :json)
end
