class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :update, :destroy]
  before_action :set_lawnmower, only: [:create, :destroy]

  def create
    @review = Review.new(review_params)
    @review.lawnmower = @lawnmower
    @review.user = current_user
    if @review.save
      redirect_to lawnmower_path(@lawnmower)
    else
      render 'lawnmowers/show', status: :unprocessable_entity
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
    params.require(:review).permit(:comment, :rating, :photo, :user_id, :lawnmower_id)
  end
end
