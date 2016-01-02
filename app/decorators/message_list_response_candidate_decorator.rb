class MessageListResponseCandidateDecorator < Draper::Decorator
  delegate_all

  def next_message
    MessageList.find model.next_message_id
  end
end
