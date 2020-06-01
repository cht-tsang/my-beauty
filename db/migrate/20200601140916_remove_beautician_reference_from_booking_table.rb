class RemoveBeauticianReferenceFromBookingTable < ActiveRecord::Migration[6.0]
  def change
    remove_reference :bookings, :beautician, foreign_key: true
  end
end
