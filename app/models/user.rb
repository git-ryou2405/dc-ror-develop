class User < ApplicationRecord
  has_many :receipt_histories, class_name: 'Journal', foreign_key: 'to_user_id'
  has_many :send_histories, class_name: 'Journal', foreign_key: 'from_user_id'
  has_one :user_balance
end
