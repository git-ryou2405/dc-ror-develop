class ChangeIsAdminNullFalseToUser < ActiveRecord::Migration[6.0]
  def up
    change_column :users, :is_admin, :boolean, null: false
  end

  def down
    change_column :users, :is_admin, :boolean, defaut: false
  end
end
