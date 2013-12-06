json.array!(@trein_coord_pedags) do |trein_coord_pedag|
  json.extract! trein_coord_pedag, :id, :estatus, :data, :interessado_id
  json.url trein_coord_pedag_url(trein_coord_pedag, format: :json)
end
