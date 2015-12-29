class MessageDecorator < Draper::Decorator
  delegate_all

  def text
    if model.message_list.present?
      model.message_list.text
    else
      model.response_candidate.text
    end
  end
end
