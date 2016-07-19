json.array!(@phases) do |phase|
  json.extract! phase, :id, :name, :next_phase_id
  json.url phase_url(phase, format: :json)
end
