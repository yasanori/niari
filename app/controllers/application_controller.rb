class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :all_new_messages

  def all_new_messages
    if user_signed_in?
      receive_user = Message.where(receive_user_id: current_user.id).count
      receive_user_checked_message = Message.where(receive_user_id_checked_message: current_user.id).count
      message_count = receive_user - receive_user_checked_message
      if 0 == message_count
        @badg = 0
      else
        @badg = 1
      end
    end
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :image, :profile, :camera_id, :prefecture_id])
  end

end
