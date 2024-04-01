class Product < ApplicationRecord

  validates :name, presence: true
  validates :category, presence: true
  validates :category, inclusion: { in: %w(pantry fridge) }
  has_many :items, dependent: :destroy

  def self.categories
    ['pantry', 'fridge']
  end

end
