class GirlsController < ActionController::Base
  def index
    @girls = Girl.all
  end
end
