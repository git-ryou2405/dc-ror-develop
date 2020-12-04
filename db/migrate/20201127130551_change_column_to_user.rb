class ChangeColumnToUser < ActiveRecord::Migration[6.0]
  def up
    change_column :users, :is_admin, :boolean, default: false
  end

  def down
    change_column :users, :is_admin, :boolean
  end
end
