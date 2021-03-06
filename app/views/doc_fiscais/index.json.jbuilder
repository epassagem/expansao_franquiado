json.array!(@doc_fiscais) do |doc_fiscai|
  json.extract! doc_fiscai, :id, :rg, :cpf, :serasa, :fpc, :bens_imob, :imposto_renda_pf, :imposto_renda_pj, :comprovante_resid, :certidao_casamento, :socio_rg, :socio_cpf, :socio_serasa, :socio_fpc, :socio_bens_imob, :socio_imposto_renda_pf, :socio_imposto_renda_pj, :socio_comprovante_resid, :socio_certidao_casamento
  json.url doc_fiscai_url(doc_fiscai, format: :json)
end
