require 'rails_helper'

RSpec.describe Tamanho, type: :model do
  context 'validations' do
    it { should validate_presence_of(:nome) }
    it { should validate_length_of(:nome).is_at_most(100) }
  end
end
