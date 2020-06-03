class RemoveTreatmentFromBooking < ActiveRecord::Migration[6.0]
  def change
    remove_reference :bookings, :treatment, null: false, foreign_key: true
  end
end
