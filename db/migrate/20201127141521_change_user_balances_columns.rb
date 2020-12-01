class ChangeUserBalancesColumns < ActiveRecord::Migration[6.0]
  def change
    remove_column :user_balances, :balance, :integer
    add_column :user_balances, :send_total_amount, :integer
    add_column :user_balances, :receipt_total_amount, :integer
  end
end
