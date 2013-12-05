class DocFiscai < ActiveRecord::Base
  mount_uploader :rg, ArquivoUploader
  belongs_to :interessado, autosave: true
end
