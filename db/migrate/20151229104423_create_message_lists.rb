class CreateMessageLists < ActiveRecord::Migration
  def change
    create_table :message_lists do |t|
      t.string :text
      t.integer :girl_id

      t.timestamps null: false
    end
  end
end
