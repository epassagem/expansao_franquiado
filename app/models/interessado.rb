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
end
