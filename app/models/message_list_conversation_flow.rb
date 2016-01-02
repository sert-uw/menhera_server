class MessageListConversationFlow < ActiveRecord::Base
  belongs_to :message_list
  belongs_to :conversation_flow
end
