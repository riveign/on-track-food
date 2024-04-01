class Item < ApplicationRecord
  belongs_to :product
  validates :quantity, numericality: { greater_than_or_equal_to: 0 }
  validates :expiry_date, presence: true

  scope :in_stock, -> { where("quantity > 1") }
end
