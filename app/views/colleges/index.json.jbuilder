json.array!(@colleges) do |college|
  json.extract! college, :id, :name, :type
  json.url college_url(college, format: :json)
end
