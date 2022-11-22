class LawnmowersController < ApplicationController

  def edit
  end

  def update
    @lawnmower = Lawnmower.find(params[:id])
    @lawnmower.update(lawnmower_params)
    redirect_to lawmower_path(@lawnmower)
  end

  def destroy
    @lawnmower = Lawnmower.find(params[:id])
    @lawnmower.destroy
    redirect_to lawnmowers_path, status: :see_other
  end
end
