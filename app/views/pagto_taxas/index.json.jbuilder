json.array!(@pagto_taxas) do |pagto_taxa|
  json.extract! pagto_taxa, :id, :estatus, :interessado_id
  json.url pagto_taxa_url(pagto_taxa, format: :json)
end
