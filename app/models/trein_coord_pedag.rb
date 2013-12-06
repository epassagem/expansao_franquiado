class TreinCoordPedag < ActiveRecord::Base
  belongs_to :interessado, autosave: true
end
