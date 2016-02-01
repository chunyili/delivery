json.array!(@advisors) do |advisor|
  json.extract! advisor, :id, :s_ID, :i_ID
  json.url advisor_url(advisor, format: :json)
end
