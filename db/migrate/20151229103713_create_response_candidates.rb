class CreateResponseCandidates < ActiveRecord::Migration
  def change
    create_table :response_candidates do |t|
      t.string :text

      t.timestamps null: false
    end
  end
end
