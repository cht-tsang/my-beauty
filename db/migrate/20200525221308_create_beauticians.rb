class CreateBeauticians < ActiveRecord::Migration[6.0]
  def change
    create_table :beauticians do |t|
      t.text :description
      t.string :location
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
