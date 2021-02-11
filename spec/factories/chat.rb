FactoryBot.define do
  factory :chat do
    association :room
    association :user
    message { Faker::Lorem.characters(number: 5) }
  end
end
