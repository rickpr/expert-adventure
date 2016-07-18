json.array!(@departments) do |department|
  json.extract! department, :id, :school_id, :name, :type
  json.url department_url(department, format: :json)
end
