class Journal < ApplicationRecord
  validates :amount, :from_user_id, :to_user_id, presence: true
  validates :amount, {numericality: {greater_than_or_equal_to: 0} }
  validate :check_id

  def check_id
    errors.add(:base, "既に同一IDが存在するため、登録できません") if from_user_id == to_user_id
  end
end
