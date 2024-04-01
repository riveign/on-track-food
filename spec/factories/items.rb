FactoryBot.define do
  factory :item do
    association :product
    expiry_date { 1.year.from_now }
    quantity { 5 }
  end
end
