json.array!(@instances) do |instance|
  json.extract! instance, :id, :route_id, :instance_id, :method, :dept_time, :arvl_time
  json.url instance_url(instance, format: :json)
end
