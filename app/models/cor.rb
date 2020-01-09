class Cor < ApplicationRecord

  alias_attribute :name, :nome

  validates :nome, presence: true, length: { maximum: 100 }
end
