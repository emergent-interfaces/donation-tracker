class WarehousesController < ApplicationController
  before_filter :find_org

  def index
    @warehouses = Warehouse.all
  end

  def show
    @warehouse = Warehouse.find(params[:id])
  end

  def new
    @warehouse = Warehouse.new
    @warehouse.build_address
  end

  def create
    @warehouse = Warehouse.new(params[:warehouse])

    if @warehouse.save
      redirect_to [@org, @warehouse], :notice => "Created warehouse"
    else
      @warehouse.build_address unless @warehouse.address
      render :action => :new
    end
  end

  def edit
    @warehouse = Warehouse.find(params[:id])
    @warehouse.build_address unless @warehouse.address
  end

  def update
    @warehouse = Warehouse.find(params[:id])

    if @warehouse.update_attributes(params[:warehouse])
      redirect_to [@org, @warehouse], :notice => "Warehouse updated"
    else
      @warehouse.build_address unless @warehouse.address
      render :action => :edit
    end
  end

  def destroy
    @warehouse = Warehouse.find(params[:id])
    @warehouse.destroy
    redirect_to org_warehouses_path(@org), :notice => "Warehouse deleted"
  end

  private
  def find_org
    @org = Org.find(params[:org_id])
  end
end
