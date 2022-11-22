class LawnmowersController < ApplicationController
  def index
    @lawnmowers = Lawnmower.all
  end

  def show
    @lawnmower = Lawnmower.find(params[:id])
  end

end
