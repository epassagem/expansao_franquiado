class Interessado < ActiveRecord::Base
 self.per_page = 2
 
 has_many :cartum, autosave: true
 accepts_nested_attributes_for :cartum
 
 has_many :doc_fiscais, autosave: true
 accepts_nested_attributes_for :doc_fiscais
 
 has_many :projeto_arquitetonicos, autosave: true
 accepts_nested_attributes_for :projeto_arquitetonicos
 
 has_many :cronogramas, autosave: true
 accepts_nested_attributes_for :cronogramas

 has_many :redacaos, autosave: true
 accepts_nested_attributes_for :redacaos
 
 has_many :planilhas, autosave: true
 accepts_nested_attributes_for :planilhas

 has_many :pagto_taxas, autosave: true
 accepts_nested_attributes_for :pagto_taxas

 has_many :pro_contratos, autosave: true
 accepts_nested_attributes_for :pro_contratos

 has_many :valid_ponto_comers, autosave: true
 accepts_nested_attributes_for :valid_ponto_comers

 has_many :doc_ponto_comers, autosave: true
 accepts_nested_attributes_for :doc_ponto_comers

 has_many :aprov_estabelecimentos, autosave: true
 accepts_nested_attributes_for :aprov_estabelecimentos

 has_many :oprov_proj_arqus, autosave: true
 accepts_nested_attributes_for :oprov_proj_arqus

 has_many :trein_consul_comercials, autosave: true
 accepts_nested_attributes_for :trein_consul_comercials

 has_many :trein_coord_pedags, autosave: true
 accepts_nested_attributes_for :trein_coord_pedags

 has_many :trein_oper_franquia, autosave: true
 accepts_nested_attributes_for :trein_oper_franquia

 has_many :trein_prof_titulars, autosave: true
 accepts_nested_attributes_for :trein_prof_titulars

end
