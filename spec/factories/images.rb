FactoryBot.define do

  factory :image do
    item_id         { 1 }
    image_url       { File.open(Rails.root.join('spec/fixture/halloween_mark_pumpkin.png')) }
  end
end
