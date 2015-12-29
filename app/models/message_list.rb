class MessageList < ActiveRecord::Base
  belongs_to :girl
  has_many :messages

  has_many :message_list_response_candidates
end
