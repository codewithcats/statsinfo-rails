class SaleLine < ActiveRecord::Base
	belongs_to :sale
	belongs_to :product
  attr_accessible :date, :discount, :order_amount, :price_unit, :product_id, :product_name, :sale_id, :sale_line_code, :subtotal
end
