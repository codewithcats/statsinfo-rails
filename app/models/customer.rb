class Customer < ActiveRecord::Base
	belongs_to :customer_area
	belongs_to :customer_group
	has_many :sales, dependent: :destroy
	# cont => contact name, contact => customer duration (months)
  attr_accessible :address, :area_id, :buy, :buy_avg, :cont, :contact, :credit_limit, :customer_code, :email, :fax, :group_id, :late, :name, :order, :order_avg, :phone, :quanbuy, :quanbuy_avg, :start_date
end
