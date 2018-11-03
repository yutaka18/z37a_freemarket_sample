class Item < ApplicationRecord
  belongs_to :user
  has_many :images
  has_many :categories
  has_one :trading_status
  has_one :brand
end
