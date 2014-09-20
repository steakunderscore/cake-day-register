json.array!(@bakers) do |baker|
  json.extract! baker, :id, :name, :email
  json.url baker_url(baker, format: :json)
end
