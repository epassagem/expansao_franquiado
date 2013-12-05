json.array!(@redacaos) do |redacao|
  json.extract! redacao, :id, :arquivo, :status, :interessado_id
  json.url redacao_url(redacao, format: :json)
end
