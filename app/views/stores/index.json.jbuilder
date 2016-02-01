json.array!(@stores) do |store|
  json.extract! store, :id, :store_id, :store_name, :store_level, :phone, :supervisor
  json.url store_url(store, format: :json)
end
