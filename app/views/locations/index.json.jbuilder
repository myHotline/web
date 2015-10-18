json.array!(@locations) do |location|
  json.extract! location, :id, :name, :tags, :entry
  json.url location_url(location, format: :json)
end
