class PostNotificationsController < ApplicationController
  before_action :set_device, only: [:create]

  def create
    if @device.nil?
      render status: 422, json: { 'message': 'device not found' }
      return
    end

    notif = Rpush::Gcm::Notification.new
    notif.app = Rpush::Gcm::App.find_by_name("push_sample_android")
    notif.registration_ids = @device.device_token
    notif.data = JSON.parse("{ \"title\": \"message from server\", \"message\": \"#{params[:messagge]}\" }")
    notif.save!

    render status: 200, json: { 'message': 'send push notification' }
  end

  private

  def set_device
    @device = Device.find params[:id]
  end
end
