class ChangePriceOnProducts < ActiveRecord::Migration[5.2]
  def change
    change_column :products, :price, "numeric USING CAST(price AS numeric)"
    change_column :products, :price, :decimal, scale: 2, precision: 9
  end
end
