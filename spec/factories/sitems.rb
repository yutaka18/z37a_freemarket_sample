FactoryBot.define do
  factory :sitem do
    id    { 1 }
    name  { Faker::Book.genre }
  end
end
