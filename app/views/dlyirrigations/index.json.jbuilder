json.array!(@dlyirrigations) do |dlyirrigation|
  json.extract! dlyirrigation, :id, :date, :irriset, :section, :runhr, :arearun, :irricost, :rainfall, :remarks
  json.url dlyirrigation_url(dlyirrigation, format: :json)
end
