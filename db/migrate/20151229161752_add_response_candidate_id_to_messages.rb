class AddResponseCandidateIdToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :response_candidate_id, :integer
  end
end
