json.array!(@doc_ponto_comers) do |doc_ponto_comer|
  json.extract! doc_ponto_comer, :id, :estatus, :arquivo, :tipo, :interessado_id
  json.url doc_ponto_comer_url(doc_ponto_comer, format: :json)
end
