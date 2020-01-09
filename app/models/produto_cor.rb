class ProdutoCor < ApplicationRecord

  belongs_to :cor
  belongs_to :produto
  has_many   :produtos_cores_tamanhos, dependent: :destroy

  accepts_nested_attributes_for :produtos_cores_tamanhos, allow_destroy: true
end
