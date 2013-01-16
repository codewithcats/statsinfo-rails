class CustomerArea < ActiveRecord::Base
	has_many :customers, :foreign_key => "area_id", dependent: :destroy
  attr_accessible :area_code, :name
end
