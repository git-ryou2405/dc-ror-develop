class AddIndexToUser < ActiveRecord::Migration[6.0]
  def change
    add_index :users, :account_name, unique: true
  end
end
