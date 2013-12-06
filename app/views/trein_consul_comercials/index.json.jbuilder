json.array!(@trein_consul_comercials) do |trein_consul_comercial|
  json.extract! trein_consul_comercial, :id, :estatus, :data, :interessado_id
  json.url trein_consul_comercial_url(trein_consul_comercial, format: :json)
end
