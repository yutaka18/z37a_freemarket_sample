require 'rails_helper'
describe Destination do
  describe '#create' do
    it "is invalid without a first_name" do
      destination = Destination.new(first_name: "", last_name: "あ", first_name_kana: "ア", last_name_kana: "ア", post_number: "0000000", city: "0", address: "0")
      destination.valid?
      expect(destination.errors[:first_name]).to include("を入力してください")
    end
    it "is invalid without a last_name" do
      destination = Destination.new(first_name: "あ", last_name: "", first_name_kana: "ア", last_name_kana: "ア", post_number: "0000000", city: "0", address: "0")
      destination.valid?
      expect(destination.errors[:last_name]).to include("を入力してください")
    end
    it "is invalid without a first_name_kana" do
      destination = Destination.new(first_name: "あ", last_name: "あ", first_name_kana: "", last_name_kana: "ア", post_number: "0000000", city: "0", address: "0")
      destination.valid?
      expect(destination.errors[:first_name_kana]).to include("を入力してください")
    end
    it "is invalid without a first_name_kana" do
      destination = Destination.new(first_name: "あ", last_name: "あ", first_name_kana: "ｱ", last_name_kana: "ア", post_number: "0000000", city: "0", address: "0")
      destination.valid?
      expect(destination.errors[:first_name_kana]).to include("は全角カタカナで入力してください")
    end
    it "is invalid without a first_name_kana" do
      destination = Destination.new(first_name: "あ", last_name: "あ", first_name_kana: "あ", last_name_kana: "ア", post_number: "0000000", city: "0", address: "0")
      destination.valid?
      expect(destination.errors[:first_name_kana]).to include("は全角カタカナで入力してください")
    end
    it "is invalid without a first_name_kana" do
      destination = Destination.new(first_name: "あ", last_name: "あ", first_name_kana: "亜", last_name_kana: "ア", post_number: "0000000", city: "0", address: "0")
      destination.valid?
      expect(destination.errors[:first_name_kana]).to include("は全角カタカナで入力してください")
    end
    it "is invalid without a first_name_kana" do
      destination = Destination.new(first_name: "あ", last_name: "あ", first_name_kana: "a", last_name_kana: "ア", post_number: "0000000", city: "0", address: "0")
      destination.valid?
      expect(destination.errors[:first_name_kana]).to include("は全角カタカナで入力してください")
    end
    it "is invalid without a first_name_kana" do
      destination = Destination.new(first_name: "あ", last_name: "あ", first_name_kana: "A", last_name_kana: "ア", post_number: "0000000", city: "0", address: "0")
      destination.valid?
      expect(destination.errors[:first_name_kana]).to include("は全角カタカナで入力してください")
    end
    it "is invalid without a first_name_kana" do
      destination = Destination.new(first_name: "あ", last_name: "あ", first_name_kana: "1", last_name_kana: "ア", post_number: "0000000", city: "0", address: "0")
      destination.valid?
      expect(destination.errors[:first_name_kana]).to include("は全角カタカナで入力してください")
    end
    it "is invalid without a last_name_kana" do
      destination = Destination.new(first_name: "あ", last_name: "あ", first_name_kana: "ア", last_name_kana: "", post_number: "0000000", city: "0", address: "0")
      destination.valid?
      expect(destination.errors[:last_name_kana]).to include("を入力してください")
    end
    it "is invalid without a last_name_kana" do
      destination = Destination.new(first_name: "あ", last_name: "あ", first_name_kana: "ア", last_name_kana: "ｱ", post_number: "0000000", city: "0", address: "0")
      destination.valid?
      expect(destination.errors[:last_name_kana]).to include("は全角カタカナで入力してください")
    end
    it "is invalid without a last_name_kana" do
      destination = Destination.new(first_name: "あ", last_name: "あ", first_name_kana: "ア", last_name_kana: "亜", post_number: "0000000", city: "0", address: "0")
      destination.valid?
      expect(destination.errors[:last_name_kana]).to include("は全角カタカナで入力してください")
    end
    it "is invalid without a last_name_kana" do
      destination = Destination.new(first_name: "あ", last_name: "あ", first_name_kana: "ア", last_name_kana: "a", post_number: "0000000", city: "0", address: "0")
      destination.valid?
      expect(destination.errors[:last_name_kana]).to include("は全角カタカナで入力してください")
    end
    it "is invalid without a last_name_kana" do
      destination = Destination.new(first_name: "あ", last_name: "あ", first_name_kana: "ア", last_name_kana: "ａ", post_number: "0000000", city: "0", address: "0")
      destination.valid?
      expect(destination.errors[:last_name_kana]).to include("は全角カタカナで入力してください")
    end
    it "is invalid without a last_name_kana" do
      destination = Destination.new(first_name: "あ", last_name: "あ", first_name_kana: "ア", last_name_kana: "1", post_number: "0000000", city: "0", address: "0")
      destination.valid?
      expect(destination.errors[:last_name_kana]).to include("は全角カタカナで入力してください")
    end
    it "is invalid without a post_number" do
      destination = Destination.new(first_name: "あ", last_name: "あ", first_name_kana: "ア", last_name_kana: "ア", post_number: "", city: "0", address: "0")
      destination.valid?
      expect(destination.errors[:post_number]).to include("を入力してください")
    end
    it "is invalid without a post_number" do
      destination = Destination.new(first_name: "あ", last_name: "あ", first_name_kana: "ア", last_name_kana: "ア", post_number: "123456", city: "0", address: "0")
      destination.valid?
      expect(destination.errors[:post_number]).to include("は半角数字のみで7桁入力してください")
    end
    it "is invalid without a post_number" do
      destination = Destination.new(first_name: "あ", last_name: "あ", first_name_kana: "ア", last_name_kana: "ア", post_number: "アイウエオカキ", city: "0", address: "0")
      destination.valid?
      expect(destination.errors[:post_number]).to include("は半角数字のみで7桁入力してください")
    end
    it "is invalid without a post_number" do
      destination = Destination.new(first_name: "あ", last_name: "あ", first_name_kana: "ア", last_name_kana: "ア", post_number: "あいうえおかき", city: "0", address: "0")
      destination.valid?
      expect(destination.errors[:post_number]).to include("は半角数字のみで7桁入力してください")
    end
    it "is invalid without a post_number" do
      destination = Destination.new(first_name: "あ", last_name: "あ", first_name_kana: "ア", last_name_kana: "ア", post_number: "ABCDEFG", city: "0", address: "0")
      destination.valid?
      expect(destination.errors[:post_number]).to include("は半角数字のみで7桁入力してください")
    end
    it "is invalid without a post_number" do
      destination = Destination.new(first_name: "あ", last_name: "あ", first_name_kana: "ア", last_name_kana: "ア", post_number: "ａｂＣＤｅｆｇ", city: "0", address: "0")
      destination.valid?
      expect(destination.errors[:post_number]).to include("は半角数字のみで7桁入力してください")
    end
    it "is invalid without a post_number" do
      destination = Destination.new(first_name: "あ", last_name: "あ", first_name_kana: "ア", last_name_kana: "ア", post_number: "郵便番号郵便局", city: "0", address: "0")
      destination.valid?
      expect(destination.errors[:post_number]).to include("は半角数字のみで7桁入力してください")
    end
    it "is invalid without a post_number" do
      destination = Destination.new(first_name: "あ", last_name: "あ", first_name_kana: "ア", last_name_kana: "ア", post_number: "-||||¥@", city: "0", address: "0")
      destination.valid?
      expect(destination.errors[:post_number]).to include("は半角数字のみで7桁入力してください")
    end
    it "is invalid without a city" do
      destination = Destination.new(first_name: "あ", last_name: "あ", first_name_kana: "ア", last_name_kana: "ア", post_number: "1234567", city: "", address: "0")
      destination.valid?
      expect(destination.errors[:city]).to include("を入力してください")
    end
    it "is invalid without a address" do
      destination = Destination.new(first_name: "あ", last_name: "あ", first_name_kana: "ア", last_name_kana: "ア", post_number: "1234567", city: "0", address: "")
      destination.valid?
      expect(destination.errors[:address]).to include("を入力してください")
    end
  end
end