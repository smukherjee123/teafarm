json.array!(@irrisets) do |irriset|
  json.extract! irriset, :id, :setname, :motordet, :motorhp, :gpm, :fuel, :fuelperhr, :location_id
  json.url irriset_url(irriset, format: :json)
end
