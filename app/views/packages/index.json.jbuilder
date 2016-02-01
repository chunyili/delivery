json.array!(@packages) do |package|
  json.extract! package, :id, :package_id, :sender_id, :receiver_id, :content, :length, :width, :height, :weight, :price
  json.url package_url(package, format: :json)
end
