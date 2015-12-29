class MessageList < ActiveRecord::Base
  belongs_to :girl

  has_many :message_list_response_candidates
  has_many :response_candidates, through: :message_list_response_candidates
end
