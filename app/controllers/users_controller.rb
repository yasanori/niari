class UsersController < ApplicationController
  def index
    @cameraman = User.all
  end

  def show
    @user = User.find(params[:id])
    @photos = @user.photos
  end

end
