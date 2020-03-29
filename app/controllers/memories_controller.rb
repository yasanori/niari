class MemoriesController < ApplicationController
  def index
    @memories = Memory.order(updated_at: :desc).limit(10)
  end

  def show
    @memory = Memory.find(params[:id])
  end

  def destroy
    @memory = Memory.find(params[:id])
    @path = Memory.find(params[:id])
    @memory.destroy
    redirect_to colection_user_path(@path)
  end

  def new
    @memory = Memory.new
  end

  def create
    Memory.create(memory_params)
  end

  private
  def memory_params
    params.require(:memory).permit(:photo).merge(user_id: current_user.id)
  end

end
