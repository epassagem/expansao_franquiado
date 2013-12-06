class TreinConsulComercial < ActiveRecord::Base
  belongs_to :interessado, autosave: true
end
