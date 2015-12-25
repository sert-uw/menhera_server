class CreateDevices < ActiveRecord::Migration
  def change
    create_table :devices do |t|
      t.string :device_token, unique: true

      t.timestamps null: false
    end
  end
end
