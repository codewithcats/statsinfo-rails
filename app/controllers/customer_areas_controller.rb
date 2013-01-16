class CustomerAreasController < ApplicationController
  # GET /customer_areas
  # GET /customer_areas.json
  def index
    @customer_areas = CustomerArea.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @customer_areas }
    end
  end

  # GET /customer_areas/1
  # GET /customer_areas/1.json
  def show
    @customer_area = CustomerArea.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @customer_area }
    end
  end

  # GET /customer_areas/new
  # GET /customer_areas/new.json
  def new
    @customer_area = CustomerArea.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @customer_area }
    end
  end

  # GET /customer_areas/1/edit
  def edit
    @customer_area = CustomerArea.find(params[:id])
  end

  # POST /customer_areas
  # POST /customer_areas.json
  def create
    @customer_area = CustomerArea.new(params[:customer_area])

    respond_to do |format|
      if @customer_area.save
        format.html { redirect_to @customer_area, notice: 'Customer area was successfully created.' }
        format.json { render json: @customer_area, status: :created, location: @customer_area }
      else
        format.html { render action: "new" }
        format.json { render json: @customer_area.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /customer_areas/1
  # PUT /customer_areas/1.json
  def update
    @customer_area = CustomerArea.find(params[:id])

    respond_to do |format|
      if @customer_area.update_attributes(params[:customer_area])
        format.html { redirect_to @customer_area, notice: 'Customer area was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @customer_area.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customer_areas/1
  # DELETE /customer_areas/1.json
  def destroy
    @customer_area = CustomerArea.find(params[:id])
    @customer_area.destroy

    respond_to do |format|
      format.html { redirect_to customer_areas_url }
      format.json { head :no_content }
    end
  end
end
