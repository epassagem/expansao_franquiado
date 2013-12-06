class DocPontoComer < ActiveRecord::Base
  mount_uploader :arquivo, ArquivoUploader
  belongs_to :interessado, autosave: true
end
