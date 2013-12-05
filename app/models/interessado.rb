class Interessado < ActiveRecord::Base
 self.per_page = 2
 has_many :cartum, autosave: true
 accepts_nested_attributes_for :cartum
 has_many :doc_fiscais, autosave: true
 accepts_nested_attributes_for :doc_fiscais
 has_many :projeto_arquitetonico, autosave: true
 accepts_nested_attributes_for :projeto_arquitetonico
 
end
