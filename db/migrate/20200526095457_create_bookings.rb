class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.string :status
      t.datetime :date
      t.time :time
      t.references :user, null: false, foreign_key: true
      t.references :treatment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
