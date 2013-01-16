class ProductGroup < ActiveRecord::Base
	has_many :products, dependent: :destroy
  attr_accessible :group_code, :name
end
