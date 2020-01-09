class ProdutoCor < ApplicationRecord

  belongs_to :cor
  has_many   :produtos_cores_tamanhos

  accepts_nested_attributes_for :produtos_cores_tamanhos, allow_destroy: true
end
