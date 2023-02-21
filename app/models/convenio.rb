class Convenio < ApplicationRecord
  scope :usa_guia, -> { where(:usa_guia => true) }
end
