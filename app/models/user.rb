class User < ApplicationRecord
  validates :name, :account_name, {presence: true, length: {maximum: 50}}
  validates :account_name, uniqueness: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, format: {with: VALID_EMAIL_REGEX}, allow_blank: true
  validates :email, presence: true, length: {maximum: 256}, uniqueness: true, confirmation: { case_sensitive: false }
  validates :is_admin, presence: true
end
