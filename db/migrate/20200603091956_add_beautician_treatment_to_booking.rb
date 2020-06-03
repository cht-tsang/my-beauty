class AddBeauticianTreatmentToBooking < ActiveRecord::Migration[6.0]
  def change
    add_reference :bookings, :beautician_treatment, null: false, foreign_key: true
  end
end
