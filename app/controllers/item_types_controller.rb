class ItemTypesController < ApplicationController
  before_filter :find_org

  def index
    @item_types = ItemType.all.sort_by{|x| x[:name].downcase}
  end

  def new
    @item_type = ItemType.new
  end

  def create
    @item_type = ItemType.new(params[:item_type])

    if @item_type.save
      redirect_to org_item_types_path(@org), :notice => "Create item type"
    else
      render :action => :new
    end
  end

  def edit
    @item_type = ItemType.find(params[:id])
  end

  def update
    @item_type = ItemType.find(params[:id])

    if @item_type.update_attributes(params[:item_type])
      redirect_to org_item_types_path(@org), :notice => "Updated item type"
    else
      render :action => :edit
    end
  end

  def destroy
    @item_type = ItemType.find(params[:id])
    @item_type.destroy
    redirect_to org_item_types_path(@org), :notice => "Item type deleted"
  end
end
