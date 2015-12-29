class Girl < ActiveRecord::Base
  has_many :user_girls
  has_many :users, through: :user_girls
  has_many :message_lists
  has_many :response_candidates
  has_many :messages
end
