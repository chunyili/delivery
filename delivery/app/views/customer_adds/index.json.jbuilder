json.array!(@customer_adds) do |customer_add|
  json.extract! customer_add, :id, :c_id, :country, :state, :city, :street, :zipcode
  json.url customer_add_url(customer_add, format: :json)
end
