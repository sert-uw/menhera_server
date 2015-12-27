class GirlsController < ActionController::Base
  def index
    @girls = Girls.all
  end
end
