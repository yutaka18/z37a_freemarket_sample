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
  end
end
