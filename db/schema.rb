# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130116130334) do

  create_table "customer_areas", :force => true do |t|
    t.string   "area_code"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "customer_groups", :force => true do |t|
    t.string   "group_code"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "customers", :force => true do |t|
    t.string   "customer_code"
    t.string   "name"
    t.string   "cont"
    t.string   "address"
    t.string   "phone"
    t.string   "fax"
    t.string   "email"
    t.date     "start_date"
    t.integer  "order"
    t.decimal  "order_avg",     :precision => 10, :scale => 0
    t.decimal  "buy",           :precision => 16, :scale => 6
    t.decimal  "buy_avg",       :precision => 16, :scale => 6
    t.decimal  "quanbuy",       :precision => 16, :scale => 6
    t.decimal  "quanbuy_avg",   :precision => 16, :scale => 6
    t.integer  "contact"
    t.string   "credit_limit"
    t.integer  "late"
    t.integer  "group_id"
    t.integer  "area_id"
    t.datetime "created_at",                                   :null => false
    t.datetime "updated_at",                                   :null => false
  end

  create_table "product_categories", :force => true do |t|
    t.string   "category_code"
    t.string   "name"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "product_groups", :force => true do |t|
    t.string   "group_code"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "products", :force => true do |t|
    t.string   "code"
    t.string   "name_th"
    t.string   "name_eng"
    t.decimal  "price",            :precision => 16, :scale => 6
    t.string   "description"
    t.integer  "product_group_id"
    t.integer  "product_cat_id"
    t.datetime "created_at",                                      :null => false
    t.datetime "updated_at",                                      :null => false
  end

  create_table "sale_lines", :force => true do |t|
    t.string   "sale_line_code"
    t.integer  "sale_id"
    t.string   "product_name"
    t.integer  "order_amount"
    t.decimal  "price_unit",     :precision => 16, :scale => 6
    t.decimal  "discount",       :precision => 16, :scale => 6
    t.decimal  "subtotal",       :precision => 16, :scale => 6
    t.integer  "product_id"
    t.date     "date"
    t.datetime "created_at",                                    :null => false
    t.datetime "updated_at",                                    :null => false
  end

  create_table "sales", :force => true do |t|
    t.string   "sale_code"
    t.date     "date"
    t.decimal  "amount",      :precision => 16, :scale => 6
    t.decimal  "vat_rate",    :precision => 16, :scale => 6
    t.decimal  "vat_amount",  :precision => 16, :scale => 6
    t.string   "remark"
    t.integer  "customer_id"
    t.string   "time_code"
    t.string   "user_code"
    t.datetime "created_at",                                 :null => false
    t.datetime "updated_at",                                 :null => false
  end

end
