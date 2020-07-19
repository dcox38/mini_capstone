class ChangeProductIdToInteger < ActiveRecord::Migration[6.0]
  def change
    change_column :category_products, :product_id, "numeric USING CAST(product_id AS numeric)"
    remove_column :category_products, :integer, :string
  end
end
