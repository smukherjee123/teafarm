json.array!(@sections) do |section|
  json.extract! section, :id, :name, :area, :div, :location_id
  json.url section_url(section, format: :json)
end
