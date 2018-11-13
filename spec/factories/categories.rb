FactoryBot.define do
  factory :category do
    id    { 1 }
    name  { Faker::Book.genre }
  end
end
