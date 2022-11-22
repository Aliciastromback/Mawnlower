class LawnmowersController < ApplicationController

  def new
    @lawnmower = Lawnmower.new
  end

  def create
    @lawnmower = Lawnmower.new(lawnmower_params)
    @lawnmower.user = current_user
    if @lawnmower.save
      redirect_to lawnmower_path
    else
      render :new
    end
  end

  private

  def lawnmower_params
    params.require(:lawnmower).permit(:title, :price, :description, :speed, :user_id)
  end
end
