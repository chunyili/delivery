json.array!(@carries) do |carry|
  json.extract! carry, :id, :pkg_id, :rut_id, :ins_id
  json.url carry_url(carry, format: :json)
end
