class RoomsController < ApplicationController
  before_action :authenticate_user!

  def index
    @rooms = current_user.rooms.joins(:messages).includes(:messages).order("messages.created_at DESC")
  end

  def create
    @room = Room.create
    @entryCu = Entry.create(room_id: @room.id, user_id: current_user.id)
    @entryU = Entry.create(room_params[:entry].merge(room_id: @room.id))
    redirect_to room_path(@room)
  end

  def show
    @room = Room.find(params[:id])
    @messages = @room.messages.includes(:user)
    @message = Message.new
    @entries = @room.entries.includes(:user)
    @receive_user = Entry.where(room_id: params[:id]).where('user_id != ?', current_user.id).first
    if Message.where(room_id: params[:id]).where(receive_user_id: current_user.id).present?
      @room_message = Message.where(room_id: params[:id]).where(receive_user_id: current_user.id)
      @room_message.update(receive_user_id_checked_message: current_user.id)
    end
  end

  private
  def room_params
    params.require(:room).permit(entry:[:user_id])
  end

end
