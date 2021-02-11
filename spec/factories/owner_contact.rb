FactoryBot.define do
  factory :owner_contact do
    association :owner
    title { Faker::Lorem.characters(number: 5) }
    message { Faker::Lorem.characters(number: 20) }
  end
end
