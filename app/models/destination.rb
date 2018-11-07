class Destination < ApplicationRecord
  belongs_to :user

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :first_name_kana, presence: true, format: { with: /\A^[ア-ン゛゜ァ-ォャ-ョー「」、]+$\z/ , message: "は全角カタカナで入力してください" }
  validates :last_name_kana, presence: true, format: { with: /\A^[ア-ン゛゜ァ-ォャ-ョー「」、]+$\z/ , message:  "は全角カタカナで入力してください" }
  validates :post_number, presence: true, format: { with: /\A^\d{7}$\z/, message:  "は半角数字のみで7桁入力してください" }
  validates :city, presence: true
  validates :address, presence: true
end
