class UsersController < ApplicationController
  before_action :authenticate_user!, :only => [:index , :show, :follow, :unfollow]

  def index
    @users = User.where(camera_id: 1).where.not(id: current_user).page(params[:page]).per(15)
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

  def change_main_photo
    current_user.update(main_photo_id: params[:id])
    redirect_to memory_path(params[:id])
  end


  def colection
    @user = User.find(params[:id])
    @memories = @user.memories
  end

   def follow
      @user = User.find(params[:user_id])
      current_user.follow(@user)
      redirect_to user_path(@user)
  end

  def unfollow
      @user = User.find(params[:user_id])
      current_user.stop_following(@user)
      redirect_to user_path(@user)
  end

  def follow_list
    @user = User.find(params[:user_id])
  end

  def follower_list
    @user = User.find(params[:user_id])
  end

  private

end
