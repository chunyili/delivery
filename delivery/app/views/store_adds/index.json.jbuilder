json.array!(@store_adds) do |store_add|
  json.extract! store_add, :id, :s_id, :country, :state, :city, :street, :zipcode, :timezone
  json.url store_add_url(store_add, format: :json)
end
