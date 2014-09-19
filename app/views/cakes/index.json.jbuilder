json.array!(@cakes) do |cake|
  json.extract! cake, :id, :name, :baker_id
  json.url cake_url(cake, format: :json)
end
