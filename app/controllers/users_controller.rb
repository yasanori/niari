class UsersController < ApplicationController
  def index
    @cameraman = User.all
  end

  def show
    @user = User.find(params[:id])
    @memories = @user.memories.order(updated_at: :desc).limit(5)
  end

end
