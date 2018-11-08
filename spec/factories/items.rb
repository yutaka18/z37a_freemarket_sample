FactoryBot.define do

  factory :item do
    name                { Faker::GameOfThrones.character }
    content             { Faker::GameOfThrones.quote }
    price               { Faker::Number.between(300, 9999999) }
    condition           { Faker::Number.between(1, 6) }
    size                { "M" }
    category_large_id   { Faker::Number.between(1, 13) }
    category_medium_id  { Faker::Number.between(14, 17) }
    category_small_id   { Faker::Number.between(18, 33) }
    brand               { Faker::GameOfThrones.house }
    burden              { Faker::Number.between(1, 2) }
    shipping_method     { Faker::Number.between(5, 13) }
    from_prefecture     { Faker::Number.between(1, 47) }
    shipping_days       { Faker::Number.between(1, 3) }
    user_id             { 1 }
    buyer_id            { 1 }
  end
end
