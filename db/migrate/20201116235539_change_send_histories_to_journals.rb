class ChangeSendHistoriesToJournals < ActiveRecord::Migration[6.0]
  def change
    rename_table :send_histories, :journals
  end
end
