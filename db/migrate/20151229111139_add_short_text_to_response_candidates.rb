class AddShortTextToResponseCandidates < ActiveRecord::Migration
  def change
    add_column :response_candidates, :short_text, :string
  end
end
