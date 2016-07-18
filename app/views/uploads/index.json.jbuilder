json.array!(@uploads) do |upload|
  json.extract! upload, :id, :name, :rank, :user_id, :section_id
  json.url upload_url(upload, format: :json)
end
