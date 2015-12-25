class PushNotificationsController < ApplicationController
  def create
    device = Device.new(device_token: params[:device_token])

    if device.save
      render status: 200, json: { 'id': device.id }
    else
      render status: 422, json: { 'message': 'token is nil' }
    end
  end
end
