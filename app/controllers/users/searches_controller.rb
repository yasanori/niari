class Users::SearchesController < ApplicationController

def index
  @users = User.search(params[:keyword]).where(camera_id: 1).page(params[:page]).per(15)
  respond_to do |format|
    format.html
    format.json
  end
end

end
