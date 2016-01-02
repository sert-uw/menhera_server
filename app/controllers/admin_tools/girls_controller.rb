class AdminTools::GirlsController < ApplicationController
  before_action :authenticate_admin_user!
  before_action :set_girl, only: [:show]

  def index
    @girls = Girl.all
  end

  def show
  end

  private

  def set_girl
    @girl = Girl.find params[:id]
  end
end
