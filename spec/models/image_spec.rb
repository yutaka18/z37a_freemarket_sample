require 'rails_helper'

describe Image do
  describe "#create" do
    it "is valid with  a image_url" do
      image = build(:image)
      expect(image).to be_valid
    end

    it "is invalid without a image_url" do
      image = build(:image, image_url: nil)
      image.valid?
      expect(image.errors[:image_url]).to include("を入力してください")
    end
  end
end
