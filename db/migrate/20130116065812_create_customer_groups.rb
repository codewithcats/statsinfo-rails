class CreateCustomerGroups < ActiveRecord::Migration
  def change
    create_table :customer_groups do |t|
      t.string :group_code
      t.string :name

      t.timestamps
    end
  end
end
