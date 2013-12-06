json.array!(@valid_ponto_comers) do |valid_ponto_comer|
  json.extract! valid_ponto_comer, :id, :estatus, :interessado_id
  json.url valid_ponto_comer_url(valid_ponto_comer, format: :json)
end
