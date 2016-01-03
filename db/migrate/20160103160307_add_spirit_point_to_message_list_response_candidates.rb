class AddSpiritPointToMessageListResponseCandidates < ActiveRecord::Migration
  def change
    add_column :message_list_response_candidates, :spirit_point, :integer
  end
end
