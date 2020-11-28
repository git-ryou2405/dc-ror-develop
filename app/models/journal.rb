class Journal < ApplicationRecord
  belongs_to :to_user, class_name: "User", inverse_of: "receipt_histories"
  belongs_to :from_user, class_name: "User", inverse_of: "send_histories"

  validates :amount, :from_user_id, :to_user_id, presence: true
  validates :amount, { numericality: { greater_than_or_equal_to: 0 } }
  validate :check_id

  def check_id
    errors.add(:base, "既に同一IDが存在するため、登録できません") if from_user_id == to_user_id
  end

  enum send_type: {
    fee: 1,  # 業務委託報酬
    tipping: 2, # 投げ銭
    issuance: 8, # コイン発行
    cashing: 9, # コイン回収
  }, _prefix: true
end
