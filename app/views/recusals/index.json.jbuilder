json.array!(@recusals) do |recusal|
  json.extract! recusal, :id, :reviewer_id, :candidate_id
  json.url recusal_url(recusal, format: :json)
end
