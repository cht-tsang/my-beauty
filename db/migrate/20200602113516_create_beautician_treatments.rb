class CreateBeauticianTreatments < ActiveRecord::Migration[6.0]
  def change
    create_table :beautician_treatments do |t|

      t.timestamps
    end
  end
end
