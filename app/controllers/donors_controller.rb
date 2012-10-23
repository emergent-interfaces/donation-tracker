class DonorsController < ApplicationController
  before_filter :find_org

  def index
    @donors = Donor.all
  end

  def show
    @donor = Donor.find(params[:id])
  end

  def new
    @donor = Donor.new
    @person = @donor.build_person
  end

  def create
    @donor = Donor.new(params[:donor])

    if @donor.save
      redirect_to [@org, @donor], :notice => "Created donor"
    else
      render :action => :new
    end
  end

  def edit
    @donor = Donor.find(params[:id])
  end

  def update
    @donor = Donor.find(params[:id])

    if @donor.update_attributes(params[:donor])
      redirect_to [@org, @donor], :notice => "Donor updated"
    else
      render :action => :edit
    end
  end

  def destroy
    @donor = Donor.find(params[:id])
    @donor.destroy
    redirect_to org_donors_path(@org), :notice => "Donor deleted"
  end

  private
  def find_org
    @org = Org.find(params[:org_id])
  end
end
