class Customer < ActiveRecord::Base
  attr_accessible :address, :area_id, :buy, :buy_avg, :cont, :contact, :credit_limit, :customer_code, :email, :fax, :group_id, :late, :name, :order, :order_avg, :phone, :quanbuy, :quanbuy_avg, :start_date
end
