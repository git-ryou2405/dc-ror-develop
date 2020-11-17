class SendHistory < ApplicationRecord
  # 全てのカラムにおいて値が存在する
  validates: :amount, :from_user, :to_user, presense: true
  # from_user_idとto_user_idは異なる値であること
  validates: :from_user, :to_user, uniqueness: true
  # amountは0以上
  validates: :amount, {numericality: true, greater_than_or_equal_to: {minimum: 0}}
end
