class CreateJoinTableBeauticianTreatment < ActiveRecord::Migration[6.0]
  def change
    create_join_table :beauticians, :treatments do |t|
      # t.index [:beautician_id, :treatment_id]
      # t.index [:treatment_id, :beautician_id]
    end
  end
end
