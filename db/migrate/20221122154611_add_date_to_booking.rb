class AddDateToBooking < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :booking_date, :date
  end
end
