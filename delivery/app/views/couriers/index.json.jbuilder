json.array!(@couriers) do |courier|
  json.extract! courier, :id, :courier_id, :store_id
  json.url courier_url(courier, format: :json)
end
