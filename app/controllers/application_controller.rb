class ApplicationController < ActionController::Base
  protect_from_forgery

  private
  def find_org
    @org = Org.find(params[:org_id])
  end
end
