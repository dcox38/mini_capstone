class AddSupplierIdToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :supplier, :integer
  end
end
