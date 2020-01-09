class Produto < ApplicationRecord

  validates :nome, presence: true, length: { maximum: 100 }

  has_many :produtos_cores

  accepts_nested_attributes_for :produtos_cores, allow_destroy: true
end
