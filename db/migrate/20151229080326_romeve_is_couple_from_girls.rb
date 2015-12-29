class RomeveIsCoupleFromGirls < ActiveRecord::Migration
  def change
    remove_column :girls, :is_couple
  end
end
