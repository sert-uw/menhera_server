class PushNotificationsController < ApplicationController
  def create
    unless valid_device_type?
      render status: 422, json: { 'message': 'device type is invalid' }
      return
    end

    device = Device.new(device_type: params[:device_type], device_token: params[:device_token])

    if device.save
      render status: 200, json: { 'id': device.id }
    else
      render status: 422, json: { 'message': 'registration is failure' }
    end
  end

  private

  def valid_device_type?
    if params[:device_type] != 'android' && params[:device_type] != 'ios'
      false
    else
      true
    end
  end
end
