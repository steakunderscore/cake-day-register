json.array!(@cake_days) do |cake_day|
  json.extract! cake_day, :id, :baker_id, :date
  json.url cake_day_url(cake_day, format: :json)
end
