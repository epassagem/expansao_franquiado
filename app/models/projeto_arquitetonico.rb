class ProjetoArquitetonico < ActiveRecord::Base
  belongs_to :interessado, autosave: true
end
