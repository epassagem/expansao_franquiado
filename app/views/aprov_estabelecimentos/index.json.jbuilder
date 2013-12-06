json.array!(@aprov_estabelecimentos) do |aprov_estabelecimento|
  json.extract! aprov_estabelecimento, :id, :estatus, :interessado_id
  json.url aprov_estabelecimento_url(aprov_estabelecimento, format: :json)
end
