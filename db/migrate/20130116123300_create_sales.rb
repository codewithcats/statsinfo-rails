class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.string :sale_code
      t.date :date
      t.decimal :amount
      t.decimal :vat_rate
      t.decimal :vat_amount
      t.string :remark
      t.integer :customer_id
      t.string :time_code
      t.string :user_code

      t.timestamps
    end
  end
end
