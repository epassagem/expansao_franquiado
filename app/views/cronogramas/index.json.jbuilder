json.array!(@cronogramas) do |cronograma|
  json.extract! cronograma, :id, :status, :interessado_id
  json.url cronograma_url(cronograma, format: :json)
end
