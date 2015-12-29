class UsersController < BaseController
  def create
    return unless valid_device_type?

    user = User.find_by uuid: params[:uuid]

    if user.present?
      render status: 200, json: { token: user.token }
      return
    end

    user = User.create(name: params[:name], uuid: params[:uuid])

    device = Device.find_by(device_token: params[:device_token])

    unless device.present?
      device = Device.create(device_type: params[:device_type], device_token: params[:device_token])
    end

    user.device = device

    render status: 200, json: { token: user.token }
  end

  private

  def valid_device_type?
    if params[:device_type] != 'android' && params[:device_type] != 'ios'
      render status: 422, json: { message: 'device type is invalid' }
      false
    else
      true
    end
  end
end
