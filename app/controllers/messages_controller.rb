class MessagesController < BaseController
  before_action :authenticate_user!, only: [:index, :create, :update]

  def index
    @messages = Message.where(user_id: current_user.id, girl_id: params[:girl_id], from: Message::FROM[:girl], read: false)
  end
end
