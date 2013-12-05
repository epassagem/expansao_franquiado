json.array!(@carta) do |cartum|
  json.extract! cartum, :id, :arquivo, :status
  json.url cartum_url(cartum, format: :json)
end
