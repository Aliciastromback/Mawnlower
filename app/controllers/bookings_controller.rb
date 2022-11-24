class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :update, :destroy, :confirm]
  before_action :set_lawnmower, only: [:new, :create]

  def index
    @bookings = Booking.all
  end

  def show; end

  def edit; end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.lawnmower = @lawnmower
    @booking.pending!
    if @booking.save
      redirect_to bookings_path
    else
      render :new
    end
  end

  def update
    @booking.update(booking_params)
    redirect_to booking_path(@booking)
  end

  def destroy
    @booking.destroy
    redirect_to bookings_path, status: :see_other
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_lawnmower
    @lawnmower = Lawnmower.find(params[:lawnmower_id])
  end

  def booking_params
    params.require(:booking).permit(:user_id, :lawnmower_id, :booking_date, :status)
  end
end
