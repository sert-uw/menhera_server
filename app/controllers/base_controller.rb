class BaseController < ActionController::Base
  protected

    def authenticate_user!
      @current_user = User.find token: params[:token] if params[:token].present?

      unless @current_user.present?
        render status: 422, json: { message: 'token is invalid' }
        return
      end
    end

    def current_user
      @current_user
    end
end
