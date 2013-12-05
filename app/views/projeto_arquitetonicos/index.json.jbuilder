json.array!(@projeto_arquitetonicos) do |projeto_arquitetonico|
  json.extract! projeto_arquitetonico, :id, :status
  json.url projeto_arquitetonico_url(projeto_arquitetonico, format: :json)
end
