class User < ApplicationRecord
  #name、account_nameは空投稿は不可、文字数制限が50文字まで
  validates :name, :account_name, {presence: true, length: {maximum: 50}}
  #account_nameは一意性なので重複する名前は登録不可
  validates :account_name, uniqueness: true
  #emailは空入力不可、文字数は256文字まで、一意性なので重複する名前は登録不可。行を分ける事でエラー文の重複回避
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, format: {with: VALID_EMAIL_REGEX}
  validates :email, presence: true, length: {maximum: 256}, uniqueness: true
end
