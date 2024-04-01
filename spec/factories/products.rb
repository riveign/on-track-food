FactoryBot.define do
  factory :product do
    name { "Sample Product" }
    category { "Pantry" }

    trait :without_name do
      name { nil }
    end

    trait :without_category do
      category { nil }
    end

    trait :invalid_category do
      category { "freezer" }
    end
  end
end
