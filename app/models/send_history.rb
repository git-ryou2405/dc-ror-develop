class SendHistory < ApplicationRecord
  # 全てのカラムにおいて値が存在する
  validates :amount, :from_user_id, :to_user_id, presense: true
  # from_user_idとto_user_idは異なる値であること
  validates :from_user_id, :to_user_id, uniqueness: true

  def diffrent_value
    errors.add(:from_user_id, :to_user_id, "２つの値は異なっている") if :from_user_id != :to_user_id
  end
  # amountは0以上
  validates :amount, {numericality: {greater_than_or_equal_to: 0} }
end
