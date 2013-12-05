json.array!(@interessados) do |interessado|
  json.extract! interessado, :id, :nome, :cpf, :rg, :data_nasc, :estado_civil, :regime_bens, :renda, :sera_admin, :dispon_integral, :quem_sera_admin, :resumo_prof, :manifesto_pos, :email
  json.url interessado_url(interessado, format: :json)
end
