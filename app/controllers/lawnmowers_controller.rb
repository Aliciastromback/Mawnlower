class LawnmowersController < ApplicationController
  before_action :set_lawnmower, only: [:show, :update, :destroy]

  def index
    @lawnmowers = Lawnmower.all
  end

  def show; end

  def new
    @lawnmower = Lawnmower.new
  end

  def create
    @lawnmower = Lawnmower.new(lawnmower_params)
    @lawnmower.user = current_user
    if @lawnmower.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit; end

  def update
    @lawnmower.update(lawnmower_params)
    redirect_to lawmower_path(@lawnmower)
  end

  def destroy
    @lawnmower.destroy
    redirect_to lawnmowers_path, status: :see_other
  end

  private

  def set_lawnmower
    @lawnmower = Lawnmower.find(params[:id])
  end

  def lawnmower_params
    params.require(:lawnmower).permit(:title, :price, :description, :speed, :user_id)
  end
end
