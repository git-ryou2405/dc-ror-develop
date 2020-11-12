class CreateSendHistories < ActiveRecord::Migration[6.0]
  def change
    create_table :send_histories do |t|
      t.integer :from_user_id
      t.integer :to_user_id
      t.integer :amount
      t.integer :send_type

      t.timestamps
    end
    
    add_index :send_histories, :from_user_id
    add_index :send_histories, :to_user_id
  end
end
