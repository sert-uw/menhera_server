class AdminTools::MessageListsController < ApplicationController
  before_action :authenticate_admin_user!
  before_action :set_girl
  before_action :set_message_list, only: [:show, :edit]

  def index
    @message_lists = @girl.message_lists
  end

  def show
    @message_response = AdminTools::MessageListResponseCandidateDecorator.decorate_collection(@message_list.message_list_response_candidates.includes(:response_candidate))
  end

  def new
    @message_list = @girl.message_lists.build
  end

  def edit
  end

  def create
    @message_list = @girl.message_lists.build(message_list_params)

    if @message_list.save
      redirect_to admin_tools_girl_message_lists_path(@girl)
    else
      render :new
    end
  end

  def update
    @message_list = @girl.message_lists.find params[:id]

    if @message_list.update message_list_params
      redirect_to admin_tools_girl_message_lists_path(@girl)
    else
      render :edit
    end
  end

  def destroy
    message_list = @girl.message_lists.find params[:id]
    message_list.delete
    redirect_to admin_tools_girl_message_lists_path(@girl)
  end

  private

  def set_girl
    @girl = Girl.find params[:girl_id]
  end

  def set_message_list
    @message_list = @girl.message_lists.find params[:id]
  end

  def message_list_params
    params.require(:message_list).permit(:text)
  end
end
