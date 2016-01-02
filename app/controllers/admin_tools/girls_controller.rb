class AdminTools::GirlsController < ApplicationController
  before_action :authenticate_admin_user

  def index
    @girls = Girl.all
  end
end
