class AdminTools::UsersController < ApplicationController
  before_action :authenticate_admin_user!, only: [:index, :destroy]

  def index
    @users = User.all.includes :device
  end

  def destroy
    @user = User.find params[:id]
    @user.delete
    redirect_to admin_tools_users_path
  end
end
