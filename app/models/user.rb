class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :items
  has_one :destination

  validates :nickname, presence: true
  validates :phone_number, presence: true, uniqueness: true, format: { with: /\A0[5789]0\d{8}\z/, message:  "入力内容をご確認下さい。半角数字で最初の3桁は050、070、080、090で入力して下さい" }
  validates :password, presence: true, length: { minimum: 6 }, if: -> { new_record? || changes[:crypted_password] }
  validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
  validates :password_confirmation, presence: true, if: -> { new_record? || changes[:crypted_password] }

end
