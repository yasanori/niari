class UsersController < ApplicationController
  # before_action :authenticate_user!, :only => [:show]
  def index
    @cameraman = User.all
  end

  def show
    @user = User.find(params[:id])
    @memories = @user.memories.order(updated_at: :desc).limit(5)
    if user_signed_in?
      @currentUserEntry = Entry.where(user_id: current_user.id)
      @userEntry = Entry.where(user_id: @user.id)

      if @user.id == current_user.id
      else
        @currentUserEntry.each do |cu|
          @userEntry.each do |u|
            if cu.room_id == u.room_id
              @isRoom = true
              @roomId = cu.room_id
            end
          end
        end
        if @isRoom
        else
          @room = Room.new
          @entry = Entry.new
        end
      end
    end
  end

end
