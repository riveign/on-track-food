require 'rails_helper'

RSpec.describe Product, type: :model do
  it 'is valid with valid attributes' do
    product = build(:product)
    expect(product).to be_valid
  end

  it 'is not valid without a name' do
    product = build(:product, :without_name)
    expect(product).not_to be_valid
  end

  it 'is not valid without a category' do
    product = build(:product, :without_category)
    expect(product).not_to be_valid
  end

  it 'is not valid with an invalid category' do
    product = build(:product, :invalid_category)
    expect(product).not_to be_valid
  end
end
