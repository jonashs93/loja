require 'rails_helper'

RSpec.describe Produto, type: :model do
  context 'associations' do
    it { should have_many(:produtos_cores) }
    it { should accept_nested_attributes_for(:produtos_cores) }
  end

  context 'validations' do
    it { should validate_presence_of(:nome) }
    it { should validate_length_of(:nome).is_at_most(100) }
  end
end
