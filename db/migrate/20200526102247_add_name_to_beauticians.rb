class AddNameToBeauticians < ActiveRecord::Migration[6.0]
  def change
    add_column :beauticians, :name, :string
  end
end
