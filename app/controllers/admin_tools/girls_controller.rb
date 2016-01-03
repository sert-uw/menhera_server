class AdminTools::GirlsController < ApplicationController
  before_action :authenticate_admin_user!
  before_action :set_girl, only: [:show, :edit, :update, :destroy]

  def index
    @girls = Girl.all
  end

  def show
  end

  def new
    @girl = Girl.new
  end

  def edit
  end

  def create
    @girl = Girl.new girl_params

    if @girl.save
      redirect_to admin_tools_girls_path
    else
      redirect_to :new
    end
  end

  def update
    if @girl.update girl_params
      redirect_to admin_tools_girls_path
    else
      redirect_to :edit
    end
  end

  def destroy
    @girl.delete
    redirect_to admin_tools_girls_path
  end

  private

  def set_girl
    @girl = Girl.find params[:id]
  end

  def girl_params
    params.require(:girl).permit(:name, :spirit)
  end
end
