FactoryBot.define do
  factory :owner do
    name { Faker::Lorem.characters(number: 5) }
    email { Faker::Internet.email }
    password { Faker::Lorem.characters(number: 6) }
  end
end
