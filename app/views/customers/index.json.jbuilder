json.array!(@customers) do |customer|
  json.extract! customer, :id, :customer_id, :phone, :email, :lname, :fname, :timezone
  json.url customer_url(customer, format: :json)
end
