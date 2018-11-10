FactoryBot.define do

  factory :item do
    name               { "シャツ" }
    content            { "夏物です" }
    price              { 10000 }
    condition          { "新品、未使用" }
    size               { "M" }
    category_large_id  { 1 }
    category_medium_id { 14 }
    category_small_id  { 18 }
    brand              { "ノーブランド" }
    burden             { "着払い(購入者負担)" }
    shipping_method    { "未定" }
    from_prefecture    { "三重県" }
    shipping_days      { "2~3日で発送" }
    user_id            { 1 }
    buyer_id           { 1 }
  end
end
