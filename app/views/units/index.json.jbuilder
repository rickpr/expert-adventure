json.array!(@units) do |unit|
  json.extract! unit, :id, :school_id, :name, :type
  json.url unit_url(unit, format: :json)
end
