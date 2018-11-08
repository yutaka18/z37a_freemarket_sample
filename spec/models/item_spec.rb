require 'rails_helper'

describe Item do
  describe "#create" do
    it "is invalid without a name" do
      item = build(:item, name: nil)
      item.valid?
      expect(item.errors[:name]).to include("を入力してください")
    end

    it "is invalid with a name that has more than 41 characters" do
      item = build(:item, name: 'a'*41 )
      item.valid?
      expect(item.errors[:name]).to include("は40文字以内で入力してください")
    end

    it "is valid with a name that has less than 40 characters" do
      item = build(:item, name: 'a'*40 )
      expect(item).to be_valid
    end

    it "is invalid without a content" do
      item = build(:item, content: nil)
      item.valid?
      expect(item.errors[:content]).to include("を入力してください")
    end

    it "is invalid with a content that has more than 1001 characters" do
      item = build(:item, content: 'a'*1001)
      item.valid?
      expect(item.errors[:content]).to include("は1000文字以内で入力してください")
    end

    it "is valid with a content that has less than 1000 characters" do
      item = build(:item, content: 'a'*1000)
      expect(item).to be_valid
    end

    it "is invalid without a price" do
      item = build(:item, price: nil)
      item.valid?
      expect(item.errors[:price]).to include("を入力してください")
    end

    it "is invalid with a price that has varchar" do
      item = build(:item, price: '')
      item.valid?
      expect(item.errors[:price]).to include("は数値で入力してください")
    end

    it "is invalid with a price that has less than 299 integer" do
      item = build(:item, price: 299 )
      item.valid?
      expect(item.errors[:price]).to include("は300以上の値にしてください")
    end

    it "is valid with a price that has more than 300 integer" do
      item = build(:item, price: 300 )
      expect(item).to be_valid
    end

    it "is valid with a price that has less than 9999999 integer" do
      item = build(:item, price: 9999999 )
      expect(item).to be_valid
    end

    it "is invalid with a price that has more than 10000000 integer" do
      item = build(:item, price: 10000000 )
      item.valid?
      expect(item.errors[:price]).to include("は9999999以下の値にしてください")
    end

  end
end
