class CustomerArea < ActiveRecord::Base
	has_many :customers, dependent: :destroy
  attr_accessible :area_code, :name
end
