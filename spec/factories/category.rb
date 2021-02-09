FactoryBot.define do
  factory :category do
    category { Faker::Lorem.characters(number:5) }
  end
end