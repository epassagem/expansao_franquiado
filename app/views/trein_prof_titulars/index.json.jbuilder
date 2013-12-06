json.array!(@trein_prof_titulars) do |trein_prof_titular|
  json.extract! trein_prof_titular, :id, :estatus, :data, :interessado_id
  json.url trein_prof_titular_url(trein_prof_titular, format: :json)
end
