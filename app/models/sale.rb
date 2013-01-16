class Sale < ActiveRecord::Base
  attr_accessible :amount, :customer_id, :date, :remark, :sale_code, :time_code, :user_code, :vat_amount, :vat_rate
end
