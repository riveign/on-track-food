class Product < ApplicationRecord

  validates :name, presence: true
  validates :category, presence: true
  validates :category, inclusion: { in: %w(pantry fridge) }

  def self.categories
    ['pantry', 'fridge']
  end

end
