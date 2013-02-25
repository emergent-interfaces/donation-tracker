class RecipientsController < ApplicationController
  before_filter :find_org

  def index
    @recipients = Recipient.all
  end

  def show
    @recipient = Recipient.find(params[:id])
  end

  def new
    @recipient = Recipient.new
    @profile = @recipient.build_profile
  end

  def create
    @recipient = Recipient.new(params[:recipient])

    if @recipient.save
      redirect_to [@org, @recipient], :notice => "Created recipient"
    else
      render :action => :new
    end
  end

  def edit
    @recipient = Recipient.find(params[:id])
  end

  def update
    @recipient = Recipient.find(params[:id])

    if @recipient.update_attributes(params[:recipient])
      redirect_to [@org, @recipient], :notice => "Recipient updated"
    else
      render :action => :edit
    end
  end

  def destroy
    @recipient = Recipient.find(params[:id])
    @recipient.destroy
    redirect_to org_recipients_path(@org), :notice => "Recipient deleted"
  end

  private
  def find_org
    @org = Org.find(params[:org_id])
  end
end
