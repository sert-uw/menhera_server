class RemoveUserIdAndGirlIdFromMessages < ActiveRecord::Migration
  def change
    remove_column :messages, :user_id, :integer
    remove_column :messages, :girl_id, :integer
  end
end
