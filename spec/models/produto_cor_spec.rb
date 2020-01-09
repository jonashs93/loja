require 'rails_helper'

RSpec.describe ProdutoCor, type: :model do
  context 'associations' do
    it { should belong_to(:cor) }
    it { should belong_to(:produto) }
    it { should have_many(:produtos_cores_tamanhos) }
    it { should accept_nested_attributes_for(:produtos_cores_tamanhos) }
  end

  context 'validations' do
    it { should validate_presence_of(:produto) }
    it { should validate_presence_of(:cor) }
  end
end
