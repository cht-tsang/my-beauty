class AddBeauticianToBooking < ActiveRecord::Migration[6.0]
  def change
    add_reference :bookings, :beautician, null: false, foreign_key: true
  end
end
