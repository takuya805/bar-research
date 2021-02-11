FactoryBot.define do
  factory :user_contact do
    association :user
    title { Faker::Lorem.characters(number: 5) }
    message { Faker::Lorem.characters(number: 20) }
  end
end
