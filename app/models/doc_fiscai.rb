class DocFiscai < ActiveRecord::Base
  mount_uploader :rg, ArquivoUploader
  mount_uploader :cpf, ArquivoUploader
  mount_uploader :serasa, ArquivoUploader
  mount_uploader :fpc, ArquivoUploader
  mount_uploader :bens_imob, ArquivoUploader
  mount_uploader :imposto_renda_pj, ArquivoUploader
  mount_uploader :imposto_renda_pf, ArquivoUploader
  mount_uploader :comprovante_resid, ArquivoUploader
  mount_uploader :certidao_casamento, ArquivoUploader
  mount_uploader :socio_rg, ArquivoUploader
  mount_uploader :socio_cpf, ArquivoUploader
  mount_uploader :socio_serasa, ArquivoUploader
  mount_uploader :socio_fpc, ArquivoUploader
  mount_uploader :socio_bens_imob, ArquivoUploader
  mount_uploader :socio_imposto_renda_pj, ArquivoUploader
  mount_uploader :socio_imposto_renda_pf, ArquivoUploader
  mount_uploader :socio_comprovante_resid, ArquivoUploader
  mount_uploader :socio_certidao_casamento, ArquivoUploader
  belongs_to :interessado, autosave: true
end
