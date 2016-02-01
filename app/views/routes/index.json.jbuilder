json.array!(@routes) do |route|
  json.extract! route, :id, :route_id, :dept, :arvl
  json.url route_url(route, format: :json)
end
