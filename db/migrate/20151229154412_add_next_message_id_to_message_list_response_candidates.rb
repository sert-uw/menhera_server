class AddNextMessageIdToMessageListResponseCandidates < ActiveRecord::Migration
  def change
    add_column :message_list_response_candidates, :next_message_id, :integer, default: 1
  end
end
