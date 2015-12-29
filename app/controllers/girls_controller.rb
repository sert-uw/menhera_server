class GirlsController < BaseController
  before_action :authenticate_user!, only: [:index]

  def index
    @girls = Girl.all
  end
end
