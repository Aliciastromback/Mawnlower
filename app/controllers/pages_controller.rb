class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    if params[:query].present?
      @lawnmowers = Lawnmower.where("title ILIKE ?", "%#{params[:query]}%")
    else
      @lawnmowers = Lawnmower.all
    end
  end
end
