class RemoveBeauticianFromTreatment < ActiveRecord::Migration[6.0]
  def change
    remove_reference :treatments, :beautician, null: false, foreign_key: true
  end
end
