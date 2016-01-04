class AutoResponsesController < BaseController
  def create
    girl = Girl.find params[:girl_id]
    girl.users.each do |user|
      user_girl = girl.user_girls.find_by user_id: user.id

      last_response = user_girl.messages.last

      unless last_response.from == Message::FROM[:user]
        next
      end

      last_message = user_girl.messages.where(from: Message::FROM[:girl]).last

      message_candidate = MessageListResponseCandidate.find_by(message_list_id: last_message.message_list_id, response_candidate_id: last_response.response_candidate_id)

      user_girl.dependence += message_candidate.dependence_point
      user_girl.save

      girl.spirit += message_candidate.spirit_point
      girl.save

      user_girl.messages.create(from: Message::FROM[:girl], message_list_id: message_candidate.next_message_id)

    end

    render status: 200, json: {}
  end
end
