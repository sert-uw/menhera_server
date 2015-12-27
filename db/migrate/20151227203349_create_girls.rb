class CreateGirls < ActiveRecord::Migration
  def change
    create_table :girls do |t|
      t.string :name
      t.boolean :is_couple
      t.integer :spirit
      t.integer :dependent

      t.timestamps null: false
    end
  end
end
