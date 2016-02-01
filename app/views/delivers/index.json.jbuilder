json.array!(@delivers) do |deliver|
  json.extract! deliver, :id, :cou_id, :pkg_id, :rcv_id
  json.url deliver_url(deliver, format: :json)
end
