# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(name: "user1", account_name: "@user1", email: "user1@qa.com", password: "111111")
User.create!(name: "user2", account_name: "@user2", email: "user2@qa.com", password: "111111")

UserBalance.create!(user_id: 1, last_calculated_journal_id: 1, send_total_amount: "0", receipt_total_amount: "10000")
UserBalance.create!(user_id: 2, last_calculated_journal_id: 2, send_total_amount: "0", receipt_total_amount: "10000")
