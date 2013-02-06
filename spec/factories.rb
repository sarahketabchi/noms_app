FactoryGirl.define do
  factory :item do
    sequence(:name) { |n| "Item #{n}" }
  end

  factory :measurement do
    sequence(:name) { |n| "Measurement #{n}" }
  end

  factory :recipe do
    name "Chocolate cake"
    description "Fluffy chocolatey goodness"
    rating 5
  end

  # Missing it's recipe
  factory :incomplete_ingredient do
    amount: 5
    association :measurement, factory: :measurement
    association :item, factory: :item
  end
end



