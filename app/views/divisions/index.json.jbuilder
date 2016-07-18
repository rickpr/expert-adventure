json.array!(@divisions) do |division|
  json.extract! division, :id, :school_id, :name, :type
  json.url division_url(division, format: :json)
end
