class CustomerGroup < ActiveRecord::Base
	has_many :customers, dependent: :destroy
  attr_accessible :group_code, :name
end
