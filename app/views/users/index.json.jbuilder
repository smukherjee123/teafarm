json.array!(@users) do |user|
  json.extract! user, :id, :fname, :lname, :location_id
  json.url user_url(user, format: :json)
end
