class Journal < ApplicationRecord
  belongs_to :to_user, class_name: "User", foreign_key: "to_user_id", inverse_of: "receipt_historie"
  belongs_to :from_user, class_name: "User", foreign_key: "from_user_id", inverse_of: "send_histories"

  enum send_type: {
    fee: 1,  # 業務委託報酬
    tipping: 2, # 投げ銭
    issuance: 8, # コイン発行
    cashing: 9, # コイン回収
  }, _prefix: true
end
