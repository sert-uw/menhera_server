class GirlsController < BaseController
  before_action :authenticate_user!, only: [:index]

  def index
    @girls = UserGirlDecorator.decorate_collection(current_user.user_girls.includes :girl)
  end
end
