json.array!(@bakers) do |baker|
  json.extract! baker, :id, :name, :baked_at
  json.url baker_url(baker, format: :json)
end
