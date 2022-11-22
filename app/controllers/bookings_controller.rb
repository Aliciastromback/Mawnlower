class BookingsController < ApplicationController
  def edit; end

  def update
    @booking.update(booking_params)
    redirect_to booking_path(@booking)
  end
end
