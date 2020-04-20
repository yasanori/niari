class Users::SearchesController < ApplicationController

def index
  @users = User.search(params[:keyword]).where(camera_id: 1).where.not(id: current_user).page(params[:page]).per(15)
  @outher_users =  User.where(camera_id: 1).where.not(id: current_user).page(params[:page]).per(15)
  respond_to do |format|
    format.html
    format.json
  end
end

def all_prefecture
  @users = User.where(camera_id: 1).where.not(id: current_user).page(params[:page]).per(15)
end

def prefecture_search
  if params[:prefecture].present?
    @users = User.where(camera_id: 1).where(prefecture_id: params[:prefecture]).where.not(id: current_user).page(params[:page]).per(15)
  end
  @other_users = User.where(camera_id: 1).where.not(id: current_user).page(params[:page]).per(15)
end

end
