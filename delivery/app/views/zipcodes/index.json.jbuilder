json.array!(@zipcodes) do |zipcode|
  json.extract! zipcode, :id, :zipcode, :store_id
  json.url zipcode_url(zipcode, format: :json)
end
