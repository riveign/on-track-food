class Product < ApplicationRecord

  validates :name, presence: true
  validates :category, presence: true
  validates :category, inclusion: { in: %w(Pantry Fridge) }
end
