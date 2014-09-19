json.array!(@whirls) do |whirl|
  json.extract! whirl, :id, :baker_id, :priority
  json.url whirl_url(whirl, format: :json)
end
