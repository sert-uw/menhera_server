class MessagesController < BaseController
  before_action :authenticate_user!, only: [:index, :create, :update]

  def index
    @messages = MessageDecorator.decorate_collection(Message.where(user_id: current_user.id, girl_id: params[:girl_id], from: Message::FROM[:girl], read: false).includes(:message_list))
  end

  def create
    candidate = ResponseCandidate.find params[:candidate_id]
    last_message = Message.where(from: Message::FROM[:girl]).last

    Message.create(from: Message::FROM[:user], user_id: current_user.id, girl_id: params[:girl_id], response_candidate_id: candidate.text, read: true)

    message_candidate = MessageListResponseCandidate.find_by(message_list_id: last_message.message_list_id, response_candidate_id: params[:candidate_id])

    user_girl = current_user.user_girls.find(params[:girl_id])
    user_girl.dependence += message_candidate.dependence_point

    Message.create(from: Message::FROM[:girl], user_id: current_user.id, girl_id: params[:girl_id], message_list_id: message_candidate.next_message_id)

    render status: 200, json: {}
  end

  def update
    messages = Message.where(user_id: current_user.id, girl_id: params[:girl_id], from: Message::FROM[:girl], read: false).where("id <= ?", params[:id])
    messages.update_all(read: true)

    render status:200, json: {}
  end
end
