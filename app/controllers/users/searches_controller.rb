class Users::SearchesController < ApplicationController

def index
  if params[:prefecture].present?
    @users = User.search(params[:keyword]).where(camera_id: 1).where(prefecture_id: params[:prefecture]).page(params[:page]).per(15)
  else
    @users = User.search(params[:keyword]).where(camera_id: 1).page(params[:page]).per(15)
  end
  @outher_users =  User.where(camera_id: 1).page(params[:page]).per(15)
  respond_to do |format|
    format.html
    format.json
  end

end

end
