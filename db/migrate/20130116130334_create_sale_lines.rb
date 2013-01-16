class CreateSaleLines < ActiveRecord::Migration
  def change
    create_table :sale_lines do |t|
      t.string :sale_line_code
      t.integer :sale_id
      t.string :product_name
      t.integer :order_amount
      t.decimal :price_unit
      t.decimal :discount
      t.decimal :subtotal
      t.integer :product_id
      t.date :date

      t.timestamps
    end
  end
end
