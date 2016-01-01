class AdminTools::UsersController < ApplicationController
  before_action :authenticate_admin_user!, only: [:index]

  def index
    @users = User.all.includes :device
  end
end
