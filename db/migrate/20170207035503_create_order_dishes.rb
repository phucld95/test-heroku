class CreateOrderDishes < ActiveRecord::Migration[5.0]
  def change
    create_table :order_dishes do |t|
      t.references :order_table, foreign_key: true
      t.references :dish, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end
