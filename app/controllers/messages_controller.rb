class MessagesController < BaseController
  before_action :authenticate_user!, only: [:index, :create, :update]
  before_action :set_user_girl, only: [:index, :create, :update]

  def index
    if params[:all].present?
      @messages = MessageDecorator.decorate_collection(@user_girl.messages.includes(:message_list))
    else
      @messages = MessageDecorator.decorate_collection(@user_girl.messages.where(from: Message::FROM[:girl], read: false).includes(:message_list))
    end
  end

  def create
    @user_girl.messages.create(from: Message::FROM[:user], response_candidate_id: params[:candidate_id])

    render status: 200, json: {}
  end

  def update
    messages = @user_girl.messages.where(from: Message::FROM[:girl], read: false).where("id <= ?", params[:id])
    messages.update_all(read: true)

    render status:200, json: {}
  end

  private

  def set_user_girl
    @user_girl = current_user.user_girls.find_by(girl_id: params[:girl_id])
  end
end
