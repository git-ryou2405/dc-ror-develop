# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# ユーザー2名分作成
1.upto(2) do |i|
  User.create!(name: "user#{i}", account_name: "user_#{i}", email: "user_#{i}@test.com", is_admin: false, password: "#{i}+#{i}+#{i}+#{i}+#{i}+#{i}")
end

# user1 が user2 に送金した履歴3件
amount_from_user1 = 1000
3.times do
  Journal.create!(from_user_id: 1, to_user_id: 2, amount: amount_from_user1, send_type: "fee")
  amount_from_user1 += 1000
end

# user2 が user1 に送金した履歴3件
amount_from_user2 = 100
3.times do
  Journal.create!(from_user_id: 2, to_user_id: 1, amount: amount_from_user2, send_type: "fee")
  amount_from_user2 += 100
end

# User.create!(id: 2, name: "user2", account_name: "user_2", email: "user_2@test.com", is_admin: false, password: "222222")
# Journal.create!(from_user_id: 1, to_user_id: 2, amount: 1000, send_type: "fee")
# Journal.create!(from_user_id: 2, to_user_id: 1, amount: 100, send_type: "fee")

# user1 user2 の残高状態
UserBalance.create!(user_id: 1, last_calculated_journal_id: 3, send_total_amount: "3000", receipt_total_amount: "10000")
UserBalance.create!(user_id: 2, last_calculated_journal_id: 6, send_total_amount: "300", receipt_total_amount: "10000")
