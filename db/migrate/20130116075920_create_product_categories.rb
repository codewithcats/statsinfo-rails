class CreateProductCategories < ActiveRecord::Migration
  def change
    create_table :product_categories do |t|
      t.string :category_code
      t.string :name

      t.timestamps
    end
  end
end
