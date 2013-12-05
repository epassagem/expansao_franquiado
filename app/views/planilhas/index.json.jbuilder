json.array!(@planilhas) do |planilha|
  json.extract! planilha, :id, :estatus, :interessado_id
  json.url planilha_url(planilha, format: :json)
end
