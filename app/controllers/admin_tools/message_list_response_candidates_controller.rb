class AdminTools::MessageListResponseCandidatesController < ApplicationController
  before_action :authenticate_admin_user!, only: [:edit, :update]
  before_action :set_instances, only: [:edit, :update]

  def edit
    @next_messages = MessageList.all
  end

  def update
    if @message_candidate.update message_candidate_params
      redirect_to admin_tools_girl_message_list_path(params[:girl_id], @message_candidate.message_list_id)
    else
      render :edit
    end
  end

  private

  def set_instances
    @girl = Girl.find params[:girl_id]
    @message_candidate = MessageListResponseCandidate.find params[:id]
  end

  def message_candidate_params
    params.require(:message_list_response_candidate).permit(:dependence_point, :next_message_id)
  end
end
