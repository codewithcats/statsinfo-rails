class XlsImportController < ApplicationController
  def import
  	upload = params[:xls]
  	name =  upload['datafile'].original_filename
    directory = "public/xls"
    # create the file path
    path = File.join(directory, name)
    # write the file
    File.open(path, "wb") { |f| f.write(upload['datafile'].read) }
  end
end
