class MessagesController < ApplicationController
  before_action :authenticate_user!, only: [:create]
  def create
    @message = Message.create(message_params)
    redirect_to room_path(@message.room_id)
  end

  private
  def message_params
    params.require(:message).permit(:text, :room_id).merge(user_id: current_user.id)
  end
end
