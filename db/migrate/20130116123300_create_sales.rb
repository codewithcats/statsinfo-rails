class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.string :sale_code
      t.date :date
      t.decimal :amount, :precision => 16, :scale => 6
      t.decimal :vat_rate, :precision => 16, :scale => 6
      t.decimal :vat_amount, :precision => 16, :scale => 6
      t.string :remark
      t.integer :customer_id
      t.string :time_code
      t.string :user_code

      t.timestamps
    end
  end
end
