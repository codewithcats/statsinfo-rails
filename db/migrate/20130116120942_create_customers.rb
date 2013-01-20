class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :customer_code
      t.string :name
      t.string :cont
      t.string :address
      t.string :phone
      t.string :fax
      t.string :email
      t.date :start_date
      t.integer :order
      t.decimal :order_avg
      t.decimal :buy, :precision => 16, :scale => 6
      t.decimal :buy_avg, :precision => 16, :scale => 6
      t.decimal :quanbuy, :precision => 16, :scale => 6
      t.decimal :quanbuy_avg, :precision => 16, :scale => 6
      t.integer :contact
      t.string :credit_limit
      t.integer :late
      t.integer :group_id
      t.integer :area_id

      t.timestamps
    end
  end
end
