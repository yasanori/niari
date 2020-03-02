class RoomsController < ApplicationController
  before_action :authenticate_user!

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
  end

  private
  def room_params
    params.require(:room).permit(entry:[:user_id])
  end

end
