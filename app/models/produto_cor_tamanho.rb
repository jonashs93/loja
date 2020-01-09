class ProdutoCorTamanho < ApplicationRecord

  belongs_to :tamanho
  belongs_to :produto_cor

  validates :quantidade, presence: true, numericality: { only_integer: true, allow_blank: true }
end
