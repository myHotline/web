json.array!(@names) do |name|
  json.extract! name, :id, :tags, :entry
  json.url name_url(name, format: :json)
end
