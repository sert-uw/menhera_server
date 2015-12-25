class PushNotificationsController < ApplicationController
  def create
    unless valid_device_type?
      render status: 422, json: { 'message': 'device type is invalid' }
      return
    end

    device = Device.find_by(device_token: params[:device_token])

    unless device.present?
      device = Device.new(device_type: params[:device_type], device_token: params[:device_token])

      unless device.save
        render status: 422, json: { 'message': 'registration is failure' }
        return
      end
    end

    render status: 200, json: { 'id': device.id }
  end

  private

  def valid_device_type?
    if params[:device_type] != 'android' && params[:device_type] != 'ios'
      false
    else
      true
    end
  end

  def set_device
  end
end
