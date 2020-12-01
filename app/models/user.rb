class User < ApplicationRecord
  has_many :receipt_histories, class_name: "Journal", foreign_key: "to_user_id",
                               inverse_of: "to_user", dependent: :destroy
  has_many :send_histories, class_name: "Journal", foreign_key: "from_user_id",
                            inverse_of: "from_user", dependent: :destroy
  has_one :user_balance, dependent: :destroy

  validates :name, :account_name, { presence: true, length: { maximum: 50 } }
  validates :account_name, uniqueness: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i.freeze
  validates :email, format: { with: VALID_EMAIL_REGEX }, allow_blank: true
  validates :email, presence: true, length: { maximum: 256 }, uniqueness: { case_sensitive: false }
  validates :is_admin, presence: true
end
