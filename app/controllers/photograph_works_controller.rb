class PhotographWorksController < ApplicationController

  def index
    @works = PhotographWork.includes(:photographer)
  end

  def new
    @work = PhotographWork.new
  end

  def create
    @work = PhotographWork.new(photograph_work_params)
    unless @work.valid?
      redirect_to new_photograph_work_path and return
    end
    @work.save
    redirect_to root_path
  end

  private
  def photograph_work_params
    params.require(:photograph_work).permit(:date, :prefecture_id, :text,).merge(photographer_id: current_user.id)
  end

end
