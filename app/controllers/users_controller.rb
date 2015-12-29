class UsersController < BaseController
  def create
    user = User.find_by uuid: params[:uuid]

    if user.present?
      render status: 200, json: { token: user.token }
      return
    end

    user = User.create(name: params[:name], uuid: params[:uuid])
    render status: 200, json: { token: user.token }
  end
end
