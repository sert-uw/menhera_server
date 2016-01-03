class CreateMessageListResponseCandidates < ActiveRecord::Migration
  def change
    create_table :message_list_response_candidates do |t|
      t.integer :dependence_point, default: 0
      t.integer :message_list_id
      t.integer :response_candidate_id

      t.timestamps null: false
    end
  end
end
