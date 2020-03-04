class MemoriesController < ApplicationController
  def index
    @memories = Memory.order(updated_at: :desc).limit(10)
  end

  def show
    @memory = Memory.find(params[:id])
  end

  def destroy
    @memory = Memory.find(params[:id])
    @memory.destroy
  end

  def new
    @memory = Memory.new
  end

  def create
    Memory.create(memory_params)
  end

  def destroy
    @memory = Memory.find(params[:id])
    @memory.destroy
    redirect_to root_path
  end

  private
  def memory_params
    params.require(:memory).permit(:photo).merge(user_id: current_user.id)
  end

end
