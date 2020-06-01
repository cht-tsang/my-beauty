class AddCoordinatesToBeauticians < ActiveRecord::Migration[6.0]
  def change
    add_column :beauticians, :latitude, :float
    add_column :beauticians, :longitude, :float
  end
end
