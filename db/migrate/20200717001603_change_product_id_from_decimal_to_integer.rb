class ChangeProductIdFromDecimalToInteger < ActiveRecord::Migration[6.0]
  def change
    change_column :category_products, :product_id, :integer
  end
end
