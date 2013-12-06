json.array!(@oprov_proj_arqus) do |oprov_proj_arqu|
  json.extract! oprov_proj_arqu, :id, :estatus, :interessado_id
  json.url oprov_proj_arqu_url(oprov_proj_arqu, format: :json)
end
