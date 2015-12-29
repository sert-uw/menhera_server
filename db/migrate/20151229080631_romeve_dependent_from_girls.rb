class RomeveDependentFromGirls < ActiveRecord::Migration
  def change
    remove_column :girls, :dependent
  end
end
