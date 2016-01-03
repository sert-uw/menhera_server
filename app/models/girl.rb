class Girl < ActiveRecord::Base
  has_many :user_girls, dependent: :destroy
  has_many :users, through: :user_girls
  has_many :message_lists, dependent: :destroy
  has_many :response_candidates, dependent: :destroy
end
