class User < ApplicationRecord
  has_many :receipt_histories, class_name: "Journal", foreign_key: "to_user_id",
                               inverse_of: "to_user", dependent: :destroy
  has_many :send_histories, class_name: "Journal", foreign_key: "from_user_id",
                            inverse_of: "from_user", dependent: :destroy
  has_one :user_balance, dependent: :destroy
end
