class BookingsController < ApplicationController
  def destroy
    @booking.destroy
    redirect_to bookings_path, status: :see_other
  end
end
