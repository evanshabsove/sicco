class DashboardController < ApplicationController

  before_filter :check_admin

  def index
  end

  private
  def check_admin
    unless current_user.admin
      redirect_to root_url
    end
  end

end
