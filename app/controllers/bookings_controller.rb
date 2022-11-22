class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :update, :destroy]

  def index
    @bookings = Booking.all
  end

  def show; end
  
  def edit; end

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

  def booking_params
    params.require(:booking).permit(:user_id, :lawnmower_id)
  end
end
