FactoryBot.define do
  factory :item do
    name               { Faker::Food.dish }
    content            { Faker::Food.description }
    price              { Faker::Number.between(300, 9999999) }
    condition          { "新品、未使用" }
    size               { "M" }
    brand              { "ノーブランド" }
    burden             { "着払い(購入者負担)" }
    shipping_method    { "未定" }
    from_prefecture    { "三重県" }
    shipping_days      { "2~3日で発送" }
    buyer_id           { 1 }
    user_id            { 1 }
    category_id        { 1 }
    mitem_id           { 1 }
    sitem_id           { 1 }
    created_at         { Faker::Time.between(5.days.ago, 3.days.ago, :all) }
    updated_at         { Faker::Time.between(2.days.ago, Time.now, :all) }
  end
end
