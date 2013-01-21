class XlsImportController < ApplicationController
	def index
		respond_to do |format|
			format.html
		end
	end
  def import
    require 'fileutils'
    require 'spreadsheet'
  	tmp = params[:xls][:file].tempfile
    book = Spreadsheet.open tmp
    cusarea_sheet = book.worksheet 4
    cusarea_sheet.each 1 do |r|
      CustomerArea.create area_code: r[0], name: r[1]
    end
    cusgroup_sheet = book.worksheet 5
    cusgroup_sheet.each 1 do |r|
      CustomerGroup.create group_code: r[0], name: r[1]
    end
    pgroup_sheet = book.worksheet 6
    pgroup_sheet.each 1 do |r|
      ProductGroup.create group_code: r[0], name: r[1]
    end
    pcat_sheet = book.worksheet 7
    pcat_sheet.each 1 do |r|
      ProductCategory.create category_code: r[0], name: r[1]
    end
    product_sheet = book.worksheet 1
    product_sheet.each 1 do |r|
      group = ProductGroup.find_by_group_code r[5]
      category = ProductCategory.find_by_category_code r[6]
      Product.create(
        code: r[0],
        name_th: r[1],
        name_eng: r[2],
        price: r[3],
        description: r[4],
        product_cat_id: category.id,
        product_group_id: group.id
      )
    end
    cus_sheet = book.worksheet 0
    cus_sheet.each 1 do |r|
      group = CustomerGroup.find_by_group_code r[17]
      area = CustomerArea.find_by_area_code r[18]
      Customer.create(
      	customer_code:  r[0],
      	name:  r[1],
      	cont: r[2],
      	address: r[3],
      	phone: r[4],
      	fax: r[5],
      	email: r[6],
        start_date: r[7],
        order: r[8],
        order_avg: r[9],
        buy: r[10],
        buy_avg: r[11],
        quanbuy: r[12],
        quanbuy_avg: r[13],
        contact: r[14],
        credit_limit: r[15],
        late: r[16],
        group_id: (group.id if group),
        area_id: (area.id if area)
      )
    end
    sale_sheet = book.worksheet 2
    sale_sheet.each 1 do |r|
      customer = Customer.find_by_customer_code r[6]
      Sale.create(
        sale_code: r[0],
        date: r[1],
        amount: r[2],
        vat_rate: r[3],
        vat_amount: r[4],
        remark: r[5],
        customer_id: (customer.id if customer),
        time_code: r[7],
        user_code: r[8]
      )
    end
    respond_to do |format|
      format.html { redirect_to '/customers' }
    end
  end
end
