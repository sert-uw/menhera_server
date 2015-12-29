class ResponseCandidatesController < BaseController
  before_action :authenticate_user!, only: [:index]

  def index
    girl = Girl.find params[:girl_id]
    @candidates = girl.response_candidates
  end
end
