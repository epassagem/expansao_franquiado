json.array!(@trein_oper_franquia) do |trein_oper_franquium|
  json.extract! trein_oper_franquium, :id, :estatus, :data, :interessado_id
  json.url trein_oper_franquium_url(trein_oper_franquium, format: :json)
end
