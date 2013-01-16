class CreateCustomerAreas < ActiveRecord::Migration
  def change
    create_table :customer_areas do |t|
      t.string :area_code
      t.string :name

      t.timestamps
    end
  end
end
