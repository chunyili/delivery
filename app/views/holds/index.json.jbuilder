json.array!(@holds) do |hold|
  json.extract! hold, :id, :pkg_id, :sto_id
  json.url hold_url(hold, format: :json)
end
