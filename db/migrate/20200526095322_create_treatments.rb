class CreateTreatments < ActiveRecord::Migration[6.0]
  def change
    create_table :treatments do |t|
      t.string :name
      t.integer :cost
      t.text :description
      t.string :category
      t.references :beautician, null: false, foreign_key: true

      t.timestamps
    end
  end
end
