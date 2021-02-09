FactoryBot.define do
  factory :review do
    association :user
    association :shop
    title { Faker::Lorem.characters(number:5) }
    post { Faker::Lorem.characters(number:30) }
    star { Faker::Lorem.characters(number:5) }
  end
end