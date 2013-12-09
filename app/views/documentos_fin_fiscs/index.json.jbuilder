json.array!(@documentos_fin_fiscs) do |documentos_fin_fisc|
  json.extract! documentos_fin_fisc, :id, :nome_doc, :arquivo, :interessado_id
  json.url documentos_fin_fisc_url(documentos_fin_fisc, format: :json)
end
