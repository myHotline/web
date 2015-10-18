json.array!(@hotlines) do |hotline|
  json.extract! hotline, :id, :name, :number, :link, :donate, :category, :hours, :description
  json.url hotline_url(hotline, format: :json)
end
