require 'rails_helper'

describe Destination do
  let(:user) { create(:user) }
  describe '#create' do
    it "is valid with a first_name, last_name, first_name_kana, last_name_kana, post_number, city, address" do
      destination = build(:destination, user_id: user.id)
      expect(destination).to be_valid
    end
    it "is invalid without a first_name" do
      destination = build(:destination, first_name: "")
      destination.valid?
      expect(destination.errors[:first_name]).to include("を入力してください")
    end
    it "is invalid without a last_name" do
      destination = build(:destination, last_name: "")
      destination.valid?
      expect(destination.errors[:last_name]).to include("を入力してください")
    end
    it "is invalid without a first_name_kana" do
      destination = build(:destination, first_name_kana: "")
      destination.valid?
      expect(destination.errors[:first_name_kana]).to include("を入力してください")
    end
    it "is invalid without a first_name_kana" do
      destination = build(:destination, first_name_kana: "あ", first_name_kana: "ｱ", first_name_kana: "亜", first_name_kana: "a", first_name_kana: "A", first_name_kana: "1")
      destination.valid?
      expect(destination.errors[:first_name_kana]).to include("は全角カタカナで入力してください")
    end
    it "is invalid without a last_name_kana" do
      destination = build(:destination, last_name_kana: "")
      destination.valid?
      expect(destination.errors[:last_name_kana]).to include("を入力してください")
    end
    it "is invalid without a last_name_kana" do
      destination = build(:destination, last_name_kana: "あ", last_name_kana: "ｱ", last_name_kana: "亜", last_name_kana: "a", last_name_kana: "A", last_name_kana: "1")
      destination.valid?
      expect(destination.errors[:last_name_kana]).to include("は全角カタカナで入力してください")
    end
    it "is invalid without a post_number" do
      destination = build(:destination, post_number: "")
      destination.valid?
      expect(destination.errors[:post_number]).to include("を入力してください")
    end
    it "is invalid without a post_number" do
      destination = build(:destination, post_number: "123456")
      destination.valid?
      expect(destination.errors[:post_number]).to include("は半角数字のみで7桁入力してください")
    end
    it "is invalid without a post_number" do
      destination = build(:destination, post_number: "アイウエオカキ")
      destination.valid?
      expect(destination.errors[:post_number]).to include("は半角数字のみで7桁入力してください")
    end
    it "is invalid without a post_number" do
      destination = build(:destination, post_number: "あいうえおかき")
      destination.valid?
      expect(destination.errors[:post_number]).to include("は半角数字のみで7桁入力してください")
    end
    it "is invalid without a post_number" do
      destination = build(:destination, post_number: "ABCDEFG")
      destination.valid?
      expect(destination.errors[:post_number]).to include("は半角数字のみで7桁入力してください")
    end
    it "is invalid without a post_number" do
      destination = build(:destination, post_number: "ａｂｃｄｅｆｇ")
      destination.valid?
      expect(destination.errors[:post_number]).to include("は半角数字のみで7桁入力してください")
    end
    it "is invalid without a post_number" do
      destination = build(:destination, post_number: "郵便局郵便局郵")
      destination.valid?
      expect(destination.errors[:post_number]).to include("は半角数字のみで7桁入力してください")
    end
    it "is invalid without a post_number" do
      destination = build(:destination, post_number: "-||||¥@")
      destination.valid?
      expect(destination.errors[:post_number]).to include("は半角数字のみで7桁入力してください")
    end
    it "is invalid without a city" do
      destination = build(:destination, city: "")
      destination.valid?
      expect(destination.errors[:city]).to include("を入力してください")
    end
    it "is invalid without a address" do
      destination = build(:destination, address: "")
      destination.valid?
      expect(destination.errors[:address]).to include("を入力してください")
    end
  end
end