class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :from
      t.boolean :read, default: false
      t.string :text
      t.integer :user_id
      t.integer :girl_id

      t.timestamps null: false
    end
  end
end
