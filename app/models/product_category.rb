class ProductCategory < ActiveRecord::Base
	has_many :products, dependent: :destroy
  attr_accessible :category_code, :name
end
