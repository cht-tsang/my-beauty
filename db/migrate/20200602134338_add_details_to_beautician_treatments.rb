class AddDetailsToBeauticianTreatments < ActiveRecord::Migration[6.0]
  def change
    add_column :beautician_treatments, :name, :string
    add_column :beautician_treatments, :description, :string
    add_column :beautician_treatments, :cost, :integer
  end
end
