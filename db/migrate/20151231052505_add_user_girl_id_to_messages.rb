class AddUserGirlIdToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :user_girl_id, :integer
  end
end
