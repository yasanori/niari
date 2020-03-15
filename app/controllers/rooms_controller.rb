class RoomsController < ApplicationController
  before_action :authenticate_user!

  def index
    @rooms = current_user.rooms
    @users_rooms = []

    if @rooms.length != 0
      @rooms.each do |room|
        @user_room = {}
        entry_list = Entry.where(room_id: room.id)
        entry_list.each do |entry_user|
          if entry_user.user_id == current_user.id
          else
            @user_room[:user] = entry_user.user
            @user_room[:room] = room
            @users_rooms <<  @user_room
          end
        end
      end
    end
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
  end

  private
  def room_params
    params.require(:room).permit(entry:[:user_id])
  end

end
