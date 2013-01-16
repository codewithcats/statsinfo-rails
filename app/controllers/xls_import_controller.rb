class XlsImportController < ApplicationController
<<<<<<< HEAD
	def index
		respond_to do |format|
			format.html
		end
	end
  def import
    require 'fileutils'
    require 'spreadsheet'
  	tmp = params[:xls][:file].tempfile
    #file = File.join("public", params[:xls][:file].original_filename)
    #FileUtils.cp tmp.path, file
    book = Spreadsheet.open tmp
    cusarea_sheet = book.worksheet 4
    cusarea_sheet.each 1 do |row|
      ca = CustomerArea.new
      ca.area_code = row[0]
      ca.name = row[1]
      ca.save
    end
    cusgroup_sheet = book.worksheet 5
    cusgroup_sheet.each 1 do |row|
      cg = CustomerGroup.new
      cg.group_code = row[0]
      cg.name = row[1]
      cg.save
    end
    pgroup_sheet = book.worksheet 6
    pgroup_sheet.each 1 do |r|
      pg = ProductGroup.new
      pg.group_code = r[0]
      pg.name = r[1]
      pg.save
    end
    pcat_sheet = book.worksheet 7
    pcat_sheet.each 1 do |r|
      pc = ProductCategory.new
      pc.category_code = r[0]
      pc.name = r[1]
      pc.save
    end
    product_sheet = book.worksheet 1
    product_sheet.each 1 do |r|
      p = Product.new
      p.code = r[0]
      p.description = r[1]
      p.name_eng = r[2]
      p.name_th = r[3]
      p.price = r[4]
      ProductCategory.where("category_code = '#{r[5]}'") { |c| p.product_cat_id = c.id }
      ProductGroup.where("group_code = '#{r[6]}'") { |g| p.product_group_id = g.id }
      p.save
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
