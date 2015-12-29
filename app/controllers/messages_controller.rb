class MessagesController < BaseController
  before_action :authenticate_user!, only: [:index, :create, :update]

  def index
    @messages = Message.where(user_id: current_user.id, girl_id: params[:girl_id], from: Message::FROM[:girl], read: false)
  end

  def create
    candidate = ResponseCandidate.find params[:candidate_id]

    Message.create(from: Message::FROM[:user], user_id: current_user.id, girl_id: params[:girl_id], text: candidate.text)
    message_candidate = MessageListResponseCandidate.find_by(message_list_id: params[:message_id], response_candidate_id: params[:candidate_id])

    user_girl = current_user.user_girls.find(params[:girl_id])
    user_girl.dependence += message_candidate.dependence_point

    render status: 200, json: {}
  end

  def update
    messages = Message.where(user_id: current_user.id, girl_id: params[:girl_id], from: Message::FROM[:girl], read: false).where("id <= ?", params[:id])
    messages.update_all(read: true)

    render status:200, json: {}
  end
end
