require 'rails_helper'

describe User do
  describe '#create' do
    it "is valid with a nickname, email, password, password_confirmation, phone_number" do
      user = build(:user)
      expect(user).to be_valid
    end
    it "is invalid without a nickname" do
      user = build(:user, nickname: "")
      user.valid?
      expect(user.errors[:nickname]).to include("を入力してください")
    end
    it "is invalid without a email" do
      user = build(:user, email: "")
      user.valid?
      expect(user.errors[:email]).to include("を入力してください")
    end
    it "is invalid without a phone_number" do
      user = build(:user, phone_number: nil)
      user.valid?
      expect(user.errors[:phone_number]).to include("を入力してください")
    end
    it "is invalid without a phone_number" do
      user = build(:user, phone_number: "01012345678")
      user.valid?
      expect(user.errors[:phone_number]).to include("入力内容をご確認下さい。半角数字で最初の3桁は050、070、080、090で入力して下さい")
    end
    it "is invalid without a phone_number" do
      user = build(:user, phone_number: "02012345678")
      user.valid?
      expect(user.errors[:phone_number]).to include("入力内容をご確認下さい。半角数字で最初の3桁は050、070、080、090で入力して下さい")
    end
    it "is invalid without a phone_number" do
      user = build(:user, phone_number: "03012345678")
      user.valid?
      expect(user.errors[:phone_number]).to include("入力内容をご確認下さい。半角数字で最初の3桁は050、070、080、090で入力して下さい")
    end
    it "is invalid without a phone_number" do
      user = build(:user, phone_number: "04012345678")
      user.valid?
      expect(user.errors[:phone_number]).to include("入力内容をご確認下さい。半角数字で最初の3桁は050、070、080、090で入力して下さい")
    end
    it "is invalid without a phone_number" do
      user = build(:user, phone_number: "06012345678")
      user.valid?
      expect(user.errors[:phone_number]).to include("入力内容をご確認下さい。半角数字で最初の3桁は050、070、080、090で入力して下さい")
    end
    it "is invalid without a phone_number" do
      user = build(:user, phone_number: "00012345678")
      user.valid?
      expect(user.errors[:phone_number]).to include("入力内容をご確認下さい。半角数字で最初の3桁は050、070、080、090で入力して下さい")
    end
    it "is invalid without a password" do
      user = build(:user, password: "")
      user.valid?
      expect(user.errors[:password]).to include("を入力してください")
    end
    it "is invalid without a password" do
      user = build(:user, password: "12345")
      user.valid?
      expect(user.errors[:password]).to include("は6文字以上で入力してください")
    end
    it "is invalid without a password_confirmation" do
      user = build(:user, password: "12345678", password_confirmation: "00000000")
      user.valid?
      expect(user.errors[:password_confirmation]).to include("とPasswordの入力が一致しません")
    end
    it "is invalid without a password_confirmation" do
      user = build(:user, password_confirmation: "")
      user.valid?
      expect(user.errors[:password_confirmation]).to include("を入力してください")
    end
  end
end