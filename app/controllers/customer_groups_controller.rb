class CustomerGroupsController < ApplicationController
  # GET /customer_groups
  # GET /customer_groups.json
  def index
    @customer_groups = CustomerGroup.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @customer_groups }
    end
  end

  # GET /customer_groups/1
  # GET /customer_groups/1.json
  def show
    @customer_group = CustomerGroup.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @customer_group }
    end
  end

  # GET /customer_groups/new
  # GET /customer_groups/new.json
  def new
    @customer_group = CustomerGroup.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @customer_group }
    end
  end

  # GET /customer_groups/1/edit
  def edit
    @customer_group = CustomerGroup.find(params[:id])
  end

  # POST /customer_groups
  # POST /customer_groups.json
  def create
    @customer_group = CustomerGroup.new(params[:customer_group])

    respond_to do |format|
      if @customer_group.save
        format.html { redirect_to @customer_group, notice: 'Customer group was successfully created.' }
        format.json { render json: @customer_group, status: :created, location: @customer_group }
      else
        format.html { render action: "new" }
        format.json { render json: @customer_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /customer_groups/1
  # PUT /customer_groups/1.json
  def update
    @customer_group = CustomerGroup.find(params[:id])

    respond_to do |format|
      if @customer_group.update_attributes(params[:customer_group])
        format.html { redirect_to @customer_group, notice: 'Customer group was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @customer_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customer_groups/1
  # DELETE /customer_groups/1.json
  def destroy
    @customer_group = CustomerGroup.find(params[:id])
    @customer_group.destroy

    respond_to do |format|
      format.html { redirect_to customer_groups_url }
      format.json { head :no_content }
    end
  end
end
