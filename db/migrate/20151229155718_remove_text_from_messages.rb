class RemoveTextFromMessages < ActiveRecord::Migration
  def change
    remove_column :messages, :text, :string
  end
end
