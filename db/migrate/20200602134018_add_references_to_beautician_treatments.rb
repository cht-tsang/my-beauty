class AddReferencesToBeauticianTreatments < ActiveRecord::Migration[6.0]
  def change
    add_reference :beautician_treatments, :beautician, null: false, foreign_key: true
    add_reference :beautician_treatments, :treatment, null: false, foreign_key: true
  end
end
