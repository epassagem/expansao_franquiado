json.array!(@pro_contratos) do |pro_contrato|
  json.extract! pro_contrato, :id, :arquivo, :estatus, :interessado_id
  json.url pro_contrato_url(pro_contrato, format: :json)
end
