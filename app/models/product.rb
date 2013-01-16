class Product < ActiveRecord::Base
	belongs_to :product_group
	belongs_to :product_category
  attr_accessible :code, :description, :name_eng, :name_th, :price, :product_cat_id, :product_group_id
end
