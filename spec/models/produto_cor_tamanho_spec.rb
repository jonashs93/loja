require 'rails_helper'

RSpec.describe ProdutoCorTamanho, type: :model do
  context 'associations' do
    it { should belong_to(:tamanho) }
    it { should belong_to(:produto_cor) }
  end

  context 'validations' do
    it { should validate_presence_of(:tamanho) }
    it { should validate_presence_of(:produto_cor) }
    it { should validate_presence_of(:quantidade) }
    it { should validate_numericality_of(:quantidade).only_integer.allow_nil }
  end
end
