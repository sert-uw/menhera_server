class AddGirlIdToResponseCandidates < ActiveRecord::Migration
  def change
    add_column :response_candidates, :girl_id, :integer
  end
end
