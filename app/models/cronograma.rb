class Cronograma < ActiveRecord::Base
  belongs_to :interessado, autosave: true
end
