FactoryBot.define do
  factory :event do
    # listing_name      { Faker::Lorem.words(3).join(' ') }
    name              { Faker::Lorem.words(1) }
    description       { Faker::Lorem.sentence(40) }
    location          { Faker::Address.city }
    price             { Faker::Commerce.price }
    capacity          100
    includes_food     false
    includes_drinks   false
    starts_at         { Faker::Date.forward(40) }
    ends_at           { Faker::Date.forward(40) }
    # active            true
    user              { build(:user) }




    trait :active do
      active true
    end

    trait :inactive do
      active false
    end
  end
end
