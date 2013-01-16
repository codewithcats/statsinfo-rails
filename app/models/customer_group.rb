class CustomerGroup < ActiveRecord::Base
	has_many :customers, :foreign_key => "group_id", dependent: :destroy
  attr_accessible :group_code, :name
end
