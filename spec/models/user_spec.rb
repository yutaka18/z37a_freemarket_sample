require 'rails_helper'
describe User do
  describe '#create' do
    it "is invalid without a nickname" do
      user = User.new(nickname: "", email: "kkk@gmail.com", phone_number: "05011112222", password: "00000000", password_confirmation: "00000000")
      user.valid?
      expect(user.errors[:nickname]).to include("を入力してください")
    end
    it "is invalid without a email" do
      user = User.new(nickname: "aaa", email: "", phone_number: "07011112222", password: "00000000", password_confirmation: "00000000")
      user.valid?
      expect(user.errors[:email]).to include("を入力してください")
    end
    it "is invalid without a phone_number" do
      user = User.new(nickname: "aaa", email: "kkk@gmail.com", phone_number: "", password: "00000000", password_confirmation: "00000000")
      user.valid?
      expect(user.errors[:phone_number]).to include("を入力してください")
    end
    it "is invalid without a phone_number" do
      user = User.new(nickname: "aaa", email: "kkk@gmail.com", phone_number: "01011112222", password: "00000000", password_confirmation: "00000000")
      user.valid?
      expect(user.errors[:phone_number]).to include("入力内容をご確認下さい。半角数字で最初の3桁は050、070、080、090で入力して下さい")
    end
    it "is invalid without a phone_number" do
      user = User.new(nickname: "aaa", email: "kkk@gmail.com", phone_number: "02011112222", password: "00000000", password_confirmation: "00000000")
      user.valid?
      expect(user.errors[:phone_number]).to include("入力内容をご確認下さい。半角数字で最初の3桁は050、070、080、090で入力して下さい")
    end
    it "is invalid without a phone_number" do
      user = User.new(nickname: "aaa", email: "kkk@gmail.com", phone_number: "03011112222", password: "00000000", password_confirmation: "00000000")
      user.valid?
      expect(user.errors[:phone_number]).to include("入力内容をご確認下さい。半角数字で最初の3桁は050、070、080、090で入力して下さい")
    end
    it "is invalid without a phone_number" do
      user = User.new(nickname: "aaa", email: "kkk@gmail.com", phone_number: "04011112222", password: "00000000", password_confirmation: "00000000")
      user.valid?
      expect(user.errors[:phone_number]).to include("入力内容をご確認下さい。半角数字で最初の3桁は050、070、080、090で入力して下さい")
    end
    it "is invalid without a phone_number" do
      user = User.new(nickname: "aaa", email: "kkk@gmail.com", phone_number: "06011112222", password: "00000000", password_confirmation: "00000000")
      user.valid?
      expect(user.errors[:phone_number]).to include("入力内容をご確認下さい。半角数字で最初の3桁は050、070、080、090で入力して下さい")
    end
    it "is invalid without a phone_number" do
      user = User.new(nickname: "aaa", email: "kkk@gmail.com", phone_number: "00011112222", password: "00000000", password_confirmation: "00000000")
      user.valid?
      expect(user.errors[:phone_number]).to include("入力内容をご確認下さい。半角数字で最初の3桁は050、070、080、090で入力して下さい")
    end
    it "is invalid without a password" do
      user = User.new(nickname: "aaa", email: "kkk@gmail.com", phone_number: "08011112222", password: "", password_confirmation: "00000000")
      user.valid?
      expect(user.errors[:password]).to include("を入力してください")
    end
    it "is invalid without a password" do
      user = User.new(nickname: "aaa", email: "kkk@gmail.com", phone_number: "08011112222", password: "12345", password_confirmation: "12345")
      user.valid?
      expect(user.errors[:password]).to include("は6文字以上で入力してください")
    end
    it "is invalid without a password_confirmation" do
      user = User.new(nickname: "aaa", email: "kkk@gmail.com", phone_number: "08011112222", password: "11111111", password_confirmation: "00000000")
      user.valid?
      expect(user.errors[:password_confirmation]).to include("とPasswordの入力が一致しません")
    end
    it "is invalid without a password_confirmation" do
      user = User.new(nickname: "aaa", email: "kkk@gmail.com", phone_number: "09011112222", password: "00000000", password_confirmation: "")
      user.valid?
      expect(user.errors[:password_confirmation]).to include("を入力してください")
    end
  end
end