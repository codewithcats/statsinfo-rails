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
      c = Customer.new
      c.customer_code = r[0]
      c.name = r[1]
      c.cont = r[2]
      c.address = r[3]
      c.phone = r[4]
      c.fax = r[5]
      c.email = r[6]
      c.save
    end
    respond_to do |format|
      format.html { redirect_to '/customers' }
    end
  end
end
