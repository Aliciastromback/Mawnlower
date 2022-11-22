class LawnmowersController < ApplicationController
  def index
    @lawnmowers = Lawnmower.all
  end

  def show
    @lawnmower = Lawnmower.find(params[:id])
  end

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
  
  def edit; end

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
  
  private

  def lawnmower_params
    params.require(:lawnmower).permit(:title, :price, :description, :speed, :user_id)
  end
end
