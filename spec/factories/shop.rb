FactoryBot.define do
  factory :shop do
    association :category
    association :owner
    name { Faker::Lorem.characters(number:5) }
    postcode { Faker::Lorem.characters(number:5) }
    address { Faker::Lorem.characters(number:20) }
    station{ Faker::Lorem.characters(number:3) }
    phone { Faker::Lorem.characters(number:8) }
    holiday {:'火曜日' }
    budget {:'3,000円以下' }
    seat {Faker::Lorem.characters(number:20) }
    explain {Faker::Lorem.characters(number:15) }
    booking { 'true' }
    open_time {Faker::Lorem.characters(number:6) }
    close_time {Faker::Lorem.characters(number:6) }
  end
end