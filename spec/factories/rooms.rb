FactoryBot.define do
  factory :event do
    # listing_name      { Faker::Lorem.words(3).join(' ') }
    name              "Basketball"
    description       { Faker::Lorem.sentence(40) }
    location          { Faker::Address.city }
    price             { Faker::Commerce.price }
    capacity          8
    includes_food     false
    includes_drinks   false
    starts_at         Time.now
    ends_at           2.days.from_now
    # active            true
    user              { build(:user) }
    categories        [modern_and_minimal, sleek_and_sophisticated]



    trait :active do
      active true
    end

    trait :inactive do
      active false
    end
  end
end
