FactoryBot.define do
  factory :mitem do
    id    { 1 }
    name  { Faker::Book.genre }
  end
end
