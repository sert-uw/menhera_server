class UserController < ActionController::Base
  def create
    user = User.find(params[:uuid])
    if user.present?
      render status: 200, json: { token: user.token }
      return
    end

    User.create(name: params[:name], uuid: params[:uuid])
    token = SecureRandom.hex(16)
    render status: 200, json: { token: token }
  end
end
