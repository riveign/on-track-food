require 'rails_helper'

RSpec.describe Item, type: :model do
  it 'is valid with valid attributes' do
    item = build(:item)
    expect(item).to be_valid
  end

  it 'is not valid without a product' do
    item = build(:item, product: nil)
    expect(item).not_to be_valid
  end

  it 'is not valid without an expiry date' do
    item = build(:item, expiry_date: nil)
    expect(item).not_to be_valid
  end

  it 'is not valid without an open date' do
    item = build(:item, open_date: nil)
    expect(item).to be_valid
  end

  it 'is not valid with a negative quantity' do
    item = build(:item, quantity: -1)
    expect(item).not_to be_valid
  end

end
