class MessageListResponseCandidate < ActiveRecord::Base
  belongs_to :message_list
  belongs_to :response_candidate
end
