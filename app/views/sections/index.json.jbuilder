json.array!(@sections) do |section|
  json.extract! section, :id, :name, :role_id, :pdf
  json.url section_url(section, format: :json)
end
