class DashboardController < ApplicationController

  before_filter :check_admin

  def index
    @about = Entry.where(category: "about")
    @areas_of_interest = Entry.where(category: "area_of_interest")
    @testimonials = Entry.where(category: "testimonial")
    @contact = Entry.where(category: "contact")

  end

  private
  def check_admin
    if current_user
      unless current_user.admin
        redirect_to root_url
      end
    else
      redirect_to root_url
    end
  end

end
