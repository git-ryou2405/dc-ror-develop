class RemoveTitleFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :balance, :integer
  end
end
