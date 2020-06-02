class CreateBeauticianTreatmentTable < ActiveRecord::Migration[6.0]
  def change
    drop_table :beauticians_treatments
    create_table :beautician_treatment_tables do |t|
      t.references :beautician, null: false, foreign_key: true
      t.references :treatment, null: false, foreign_key: true
      t.string :name
      t.string :description
      t.integer :cost
    end
  end
end
