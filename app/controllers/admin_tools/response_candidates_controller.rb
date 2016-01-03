class AdminTools::ResponseCandidatesController < ApplicationController
  before_action :authenticate_admin_user!
  before_action :set_girl
  before_action :set_response_candidate, only: [:show, :edit]

  def index
    @response_candidates = @girl.response_candidates
  end

  def show
    @message_responses = AdminTools::MessageListResponseCandidateDecorator.decorate_collection(@response_candidate.message_list_response_candidates.includes(:message_list))
  end

  def new
    @response_candidate = @girl.response_candidates.build
  end

  def edit
  end

  def create
    @response_candidate = @girl.response_candidates.build(response_candidate_params)

    if @response_candidate.save
      redirect_to admin_tools_girl_response_candidates_path(@girl)
    else
      render :new
    end
  end

  def update
    @response_candidate = @girl.response_candidates.find params[:id]

    if @response_candidate.update response_candidate_params
      redirect_to admin_tools_girl_response_candidates_path(@girl)
    else
      render :edit
    end
  end

  def destroy
    response_candidate = @girl.response_candidates.find params[:id]
    response_candidate.delete
    redirect_to admin_tools_girl_response_candidates_path(@girl)
  end

  private

  def set_girl
    @girl = Girl.find params[:girl_id]
  end

  def set_response_candidate
    @response_candidate = @girl.response_candidates.find params[:id]
  end

  def response_candidate_params
    params.require(:response_candidate).permit(:short_text, :text)
  end
end
