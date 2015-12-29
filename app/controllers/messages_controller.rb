class MessagesController < BaseController
  before_action :authenticate_user!, only: [:index, :create, :update]

  def index
    @messages = Message.where(user_id: current_user.id, girl_id: params[:girl_id], from: Message::FROM[:girl], read: false)
  end

  def update
    messages = Message.where(user_id: current_user.id, girl_id: params[:girl_id], from: Message::FROM[:girl], read: false).where("id <= ?", params[:id])
    messages.update_all(read: true)

    render status:200, json: {}
  end
end
