class OrgsController < ApplicationController
  def index
    @orgs = Org.all
  end

  def show
    @org = Org.find(params[:id])
  end

  def new
    @org = Org.new
  end

  def create
    @org = Org.new(params[:org])

    if @org.save
        redirect_to @org, :notice => "New organization created"
    else
      render :action => :new
    end
  end

  def edit
    @org = Org.find(params[:id])
  end

  def update
    @org = Org.find(params[:id])

    if @org.update_attributes(params[:org])
      redirect_to @org, :notice => "Organization updated"
    else
      render :action => :edit
    end
  end

  def destroy
    @org = Org.find(params[:id])
    @org.destroy
    redirect_to root_url, :notice => "Organization removed"
  end
end
