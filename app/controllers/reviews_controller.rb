class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :update, :destroy]
  before_action :set_lawnmower, only: [:new, :create, :destroy]

  def create
    @review = Review.new(review_params)
    @review.lawnmower = Lawnmower.find(params[:lawnmower_id])
    @review.user = current_user
    if @review.save
      redirect_to root_path
    else
      render 'lawnmowers/show' # entity
    end
  end

  def edit; end

  def update
    @review.update(review_params)
    redirect_to review_path(@review)
  end

  def destroy
    @review.destroy
    redirect_to lawnmower_path(@lawnmower), status: :see_other
  end

  private

  def set_review
    @review = Review.find(params[:id])
  end

  def set_lawnmower
    @lawnmower = Lawnmower.find(params[:lawnmower_id])
  end

  def review_params
    params.require(:review).permit(:comment, :rating, :user_id, :lawnmower_id)
  end
end
