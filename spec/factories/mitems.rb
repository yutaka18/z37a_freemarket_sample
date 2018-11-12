FactoryBot.define do
  factory :mitem do
    name { Faker::Book.genre }
  end
end
