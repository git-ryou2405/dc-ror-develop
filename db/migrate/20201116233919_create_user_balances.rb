class CreateUserBalances < ActiveRecord::Migration[6.0]
  def change
    create_table :user_balances do |t|
      t.integer :balance
      t.integer :user_id
      t.integer :last_calculated_jounal_id

      t.timestamps
    end
  end
end
