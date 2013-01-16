class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :code
      t.string :name_th
      t.string :name_eng
      t.decimal :price
      t.string :description
      t.integer :product_group_id
      t.integer :product_cat_id

      t.timestamps
    end
  end
end
