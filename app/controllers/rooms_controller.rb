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
            last_message = room.messages.order(updated_at: :desc).limit(1)
            if last_message.present?
              @user_room[:message] = last_message[0].text
              @user_room[:time] = last_message[0].created_at
            else
              @user_room[:message] = "[ まだメッセージはありません ]"
              @user_room[:time] = 0
            end
            @users_rooms <<  @user_room
          end
          @users_rooms.sort_by! { |a| a[:time] }.reverse!
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
