class AutoResponsesController < BaseController
  def create
    girl = Girl.find params[:girl_id]
    girl.users.each do |user|
      user_girl = girl.user_girls.find_by user_id: user.id

      last_response = user_girl.messages.last

      unless user_girl.messages.where(from: Message::FROM[:girl]).count == 0
        unless last_response.from == Message::FROM[:user]
          next
        end
      end

      unless user_girl.messages.where(from: Message::FROM[:girl]).count == 0
        last_message = user_girl.messages.where(from: Message::FROM[:girl]).last

        message_candidate = MessageListResponseCandidate.find_by(message_list_id: last_message.message_list_id, response_candidate_id: last_response.response_candidate_id)

        user_girl.dependence += message_candidate.dependence_point
        user_girl.save

        girl.spirit += message_candidate.spirit_point
        girl.save
        new_message = user_girl.messages.create(from: Message::FROM[:girl], message_list_id: message_candidate.next_message_id)

      else
        new_message = user_girl.messages.create(from: Message::FROM[:girl], message_list_id: 1)
      end

      notif = Rpush::Gcm::Notification.new
      notif.app = Rpush::Gcm::App.find_by_name("push_sample_android")
      notif.registration_ids = user.device.device_token
      notif.data = JSON.parse("{ \"title\": \"#{girl.name}\", \"message\": \"#{new_message.message_list.text}\" }")
      notif.save!
    end

    render status: 200, json: {}
  end
end
