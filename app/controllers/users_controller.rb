class UsersController < ActionController::Base
  def create
    user = User.find_by uuid: params[:uuid]

    if user.present?
      render status: 200, json: { token: user.token }
      return
    end

    user = User.create(name: params[:name], uuid: params[:uuid])
    token = SecureRandom.hex(16)
    user.token = token
    user.save
    render status: 200, json: { token: token }
  end
end
